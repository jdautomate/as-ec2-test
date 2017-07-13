#!/bin/sh

echo "\nConfiguring and testing Access Server on ec2 instance...\n"
echo "Enter 'yes' to connect if prompted\n"

ansible-playbook roles/configure.yml

echo "Test complete! View results at /tmp/as_test_results.log on your machine\n"