#!/bin/bash

# Functions

DATE() {
  date '+%Y-%m-%d %H:%M:%S'
}

# Variables

# Get IP
IP=`ip -o addr show up primary scope global | while read -r num dev fam addr rest; do echo [$(DATE)] [Info] [System] ${addr%/*}; done`
# Set package version
VERSION="8.6.2"
# Set provision folder
PROVISION_FOLDER="/tmp"

# Let's go

# Install Elastic Repository
echo "[$(DATE)] [Info] [System] Installing Elastic Repository..."
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - &> /dev/null
apt -y install apt-transport-https &> /dev/null
echo "deb https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-8.x.list &> /dev/null
apt update &> /dev/null

# Install Elasticsearch
echo "[$(DATE)] [Info] [Elasticsearch] Installing Elasticsearch..."
apt -y install elasticsearch=$VERSION &> /dev/null
# Copy config, reload daemon and restart Elasticsearch
echo "[$(DATE)] [Info] [Elasticsearch] Copy config, reload daemon and restart Elasticsearch..."
cp -R $PROVISION_FOLDER/elasticsearch/config/* /etc/elasticsearch/ &> /dev/null
cp -R $PROVISION_FOLDER/elasticsearch/keystore/* /etc/elasticsearch/ &> /dev/null
mkdir -p /etc/elasticsearch/certificates
cp -R $PROVISION_FOLDER/elasticsearch/certificates/* /etc/elasticsearch/certificates &> /dev/null
systemctl daemon-reload &> /dev/null
systemctl enable elasticsearch  &> /dev/null
systemctl restart elasticsearch &> /dev/null
# Install Kibana
echo "[$(DATE)] [Info] [Kibana] Installing Kibana..."
apt -y install kibana=$VERSION &> /dev/null
chown -R kibana:kibana /usr/share/kibana
# Copy config, set kibana password, reload daemon and restart Kibana
echo "[$(DATE)] [Info] [Kibana] Copy config, reload daemon and restart Kibana..."
cp -R $PROVISION_FOLDER/kibana/config/* /etc/kibana &> /dev/null
mkdir -p /etc/kibana/certificates
cp -R $PROVISION_FOLDER/kibana/certificates/* /etc/kibana/certificates &> /dev/null
curl -s -o /dev/null -k -u elastic:thanos -XPOST "https://localhost:9200/_security/user/kibana/_password?pretty" -H 'Content-Type: application/json' -d' { "password" : "kIberoglatHe" }'
systemctl daemon-reload &> /dev/null
systemctl enable kibana &> /dev/null
systemctl restart kibana &> /dev/null
# Install Logstash
echo "[$(DATE)] [Info] [Logstash] Installing Logstash..."
apt -y install logstash=1:$VERSION-1 &> /dev/null
 
# Beats Family
# Install Filebeat
echo "[$(DATE)] [Info] [Filebeat] Installing Filebeat..."
apt -y install filebeat=$VERSION &> /dev/null
# Install Packetbeat
echo "[$(DATE)] [Info] [Packetbeat] Installing Packetbeat..."
apt -y install libpcap0.8 &> /dev/null
apt -y install packetbeat=$VERSION &> /dev/null
# Install Metricbeat
echo "[$(DATE)] [Info] [Metricbeat] Installing Metricbeat..."
apt -y install metricbeat=$VERSION &> /dev/null
# Install Heartbeat
echo "[$(DATE)] [Info] [Heartbeat] Installing Heartbeat..."
apt -y install heartbeat-elastic=$VERSION &> /dev/null
# Install Auditbeat
echo "[$(DATE)] [Info] [Auditbeat] Installing Auditbeat..."
apt -y install auditbeat=$VERSION &> /dev/null
# Install Elastic Agent
echo "[$(DATE)] [Info] [Elastic Agent] Installing Elastic Agent..."
apt -y install elastic-agent=$VERSION &> /dev/null

# Tidying Up
# Clean unneeded packages
echo "[$(DATE)] [Info] [System] Cleaning unneeded packages..."
apt -y autoremove &> /dev/null
# Update file search cache
echo "[$(DATE)] [Info] [System] Updating file search cache..."
updatedb &> /dev/null
# Prevent package upgrade
echo "[$(DATE)] [Info] [System] Prevent package upgrade..."
apt-mark hold elasticsearch kibana logstash filebeat packetbeat metricbeat heartbeat-elastic auditbeat elastiic-agent &> /dev/null
# Clear Disk Cache
echo "[$(DATE)] [Info] [System] Clear disk cache..."
sync; echo 1 > /proc/sys/vm/drop_caches

# Show IPs
echo "[$(DATE)] [Info] [System] IP Address on the machine..."
echo -e "$IP"
echo "[$(DATE)] [Info] [System] Enjoy it! :)"
