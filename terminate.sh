#!/bin/sh

echo "\nTerminating instance..."

ansible-playbook roles/terminate.yml

echo "Success!\n"