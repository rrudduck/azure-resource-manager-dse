#!/usr/bin/env bash

cloud_type="azure"
location=$1 #this is the location of the seed, not necessarily of this node
seed_node_name=$2

seed_node_dns_name="$seed_node_name"

echo "Configuring nodes with the settings:"
echo cloud_type $cloud_type
echo location $location
echo seed_node_dns_name $seed_node_dns_name

wget https://github.com/DSPN/install-datastax/archive/1.0.zip
apt-get -y install unzip
unzip 1.0.zip
cd install-datastax-1.0/bin

./opscenter.sh $cloud_type $seed_node_dns_name

