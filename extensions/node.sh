#!/usr/bin/env bash

cloud_type="azure"
location=$1 #this is the location of the seed, not necessarily of this node
seed_node_name=$2
data_center_name=$3

seed_node_dns_name="$seed_node_name"

echo "Configuring nodes with the settings:"
echo cloud_type $cloud_type
echo location $location
echo data_center_name $data_center_name
echo seed_node_dns_name $seed_node_dns_name

wget https://github.com/DSPN/install-datastax/archive/1.0.zip
apt-get -y install unzip
unzip 1.0.zip
cd install-datastax-1.0/bin

./dse.sh $cloud_type $seed_node_dns_name $data_center_name
