#!/usr/bin/env bash

# Functions
DATE() {
  date '+%Y-%m-%d %H:%M:%S'
}

# Variables
IP=`ip -o addr show up primary scope global | while read -r num dev fam addr rest; do echo [$(DATE)] [Info] [System] ${addr%/*}; done`

# Set package version
VERSION="7.2.0"

# Non-Interactive Installation
export DEBIAN_FRONTEND=noninteractive

# Update & Upgrade System
echo "[$(DATE)] [Info] [System] Updating & Upgrading System..."
apt-get update &> /dev/null
apt-get upgrade -y &> /dev/null

# Install Java
if [ $(dpkg-query -W -f='${Status}' openjdk-8-jdk 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  echo "[$(DATE)] [Info] [Java] Installing Java..."
  add-apt-repository ppa:openjdk-r/ppa &> /dev/null
  apt update &> /dev/null
  apt-get -y install -y openjdk-8-jdk &> /dev/null
fi

# Install Elastic Repository
if ! grep -q "^deb .*7.x" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "[$(DATE)] [Info] [System] Installing Elastic Repository..."
    wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - &> /dev/null
    apt-get -y install apt-transport-https &> /dev/null
    echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list &> /dev/null
    apt-get update &> /dev/null
fi

# Install Elasticsearch
echo "[$(DATE)] [Info] [Elasticsearch] Installing Elasticsearch..."
apt-get install -y elasticsearch=$VERSION &> /dev/null

# Copy config, reload daemon and restart Elasticsearch
echo "[$(DATE)] [Info] [Elasticsearch] Copy config, reload daemon and restart Elasticsearch..."
cp -R /vagrant/elasticsearch/* /etc/elasticsearch/
systemctl daemon-reload
service elasticsearch restart

# Install Kibana
echo "[$(DATE)] [Info] [Kibana] Installing Kibana..."
apt-get install -y kibana=$VERSION &> /dev/null

# Copy config, reload daemon and restart Kibana
echo "[$(DATE)] [Info] [Kibana] Copy config, reload daemon and restart Kibana..."
cp -R /vagrant/kibana/* /etc/kibana/
systemctl daemon-reload
service kibana restart

# Install Logstash
echo "[$(DATE)] [Info] [Logstash] Installing Logstash..."
apt-get install -y logstash=1:$VERSION-1 &> /dev/null

# Beats Family

# Install Filebeat
echo "[$(DATE)] [Info] [Filebeat] Installing Filebeat..."
apt-get install -y filebeat=$VERSION &> /dev/null

# Install Packetbeat
echo "[$(DATE)] [Info] [Packetbeat] Installing Packetbeat..."
apt-get install -y libpcap0.8 &> /dev/null
apt-get install -y packetbeat=$VERSION &> /dev/null

# Install Metricbeat
echo "[$(DATE)] [Info] [Metricbeat] Installing Metricbeat..."
apt-get install -y metricbeat=$VERSION &> /dev/null

# Install Heartbeat
echo "[$(DATE)] [Info] [Heartbeat] Installing Heartbeat..."
apt-get install -y heartbeat-elastic=$VERSION &> /dev/null

# Install Auditbeat
echo "[$(DATE)] [Info] [Auditbeat] Installing Auditbeat..."
apt-get install -y auditbeat=$VERSION &> /dev/null

# Clean unneeded packages
echo "[$(DATE)] [Info] [System] Cleaning unneeded packages..."
apt-get autoremove -y &> /dev/null

# Update file search cache
echo "[$(DATE)] [Info] [System] Updating file search cache..."
updatedb &> /dev/null

# Show IPs
echo "[$(DATE)] [Info] [System] IP Address on the machine..."
echo -e "$IP"

echo "[$(DATE)] [Info] [System] Enjoy it! :)"
