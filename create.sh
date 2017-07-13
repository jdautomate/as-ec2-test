#!/bin/sh

echo "\nSetting up new ec2 instance with OpenVPN Access Server 2.1.9 AWS appliance...."

ansible-playbook -i inventories/hosts site.yml

echo "Instance created, name: ansible-created-instance region: us-west-1\n"