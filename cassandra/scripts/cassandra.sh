#!/bin/bash

# # Install Java JDK
yum install -y java-1.8.0-openjdk

# Install Cassandra
cd /tmp
wget http://apache.mirror.anlx.net/cassandra/3.10/apache-cassandra-3.10-bin.tar.gz 
tar -xvzf apache-cassandra-3.10-bin.tar.gz

mkdir -p /opt/cassandra/
cp -R apache-cassandra-3.10 /opt/cassandra/
chown -R vagrant:vagrant /opt/cassandra
echo 'export PATH="$PATH:/opt/cassandra/apache-cassandra-3.10/bin"' >> /home/vagrant/.bash_profile
echo 'export PATH="$PATH:/opt/cassandra/apache-cassandra-3.10/bin"' >> ~/.bash_profile

