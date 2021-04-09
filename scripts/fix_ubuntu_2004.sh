#!/bin/bash

echo "      nameservers:" >> /etc/netplan/50-vagrant.yaml
echo "        addresses: [8.8.8.8, 8.8.4.4]" >> /etc/netplan/50-vagrant.yaml