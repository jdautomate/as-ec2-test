#!/bin/sh

echo "\nTerminating instance..."

ansible-playbook tasks/terminate.yml

echo "Success!\n"