#!/usr/bin/env bash

DATE=`date '+%Y-%m-%d %H:%M:%S'`

# Non-Interactive Installation
export DEBIAN_FRONTEND=noninteractive

# Install X-Pack
echo "[$DATE] [Info] [X-Pack] Installing X-Pack..."
/var/lib/dpkg/info/ca-certificates-java.postinst configure &> /dev/null

echo "[$DATE] [Info] [X-Pack] Installing X-Pack in Elasticsearch..."
cd /usr/share/elasticsearch
bin/elasticsearch-plugin install x-pack --batch &> /dev/null
service elasticsearch restart &> /dev/null
echo "[$DATE] [Info] [Kibana] Copy X-Pack config and restart Elasticsearch..."
cp -R /vagrant/x-pack/elasticsearch/* /etc/elasticsearch/
service elasticsearch restart &> /dev/null

echo "[$DATE] [Info] [X-Pack] Installing X-Pack in Kibana..."
cd /usr/share/kibana
service kibana stop &> /dev/null
bin/kibana-plugin install x-pack &> /dev/null
echo "[$DATE] [Info] [Kibana] Copy X-Pack config and restart Kibana..."
cp -R /vagrant/x-pack/kibana/* /etc/kibana/
chown -R kibana:kibana /usr/share/kibana/
service kibana restart &> /dev/null

echo "[$DATE] [Info] [X-Pack] Installing X-Pack in Logstash..."
cd /usr/share/logstash
service logstash stop &> /dev/null
bin/logstash-plugin install x-pack &> /dev/null

echo "[$DATE] [Info] [X-Pack] Kibana with X-Pack should be available in a few minutes..."
echo "[$DATE] [Info] [System] Enjoy it! :)"
