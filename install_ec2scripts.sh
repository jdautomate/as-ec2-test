#!/bin/sh

echo "\nThe following scripts will be added to /etc/ansible - ec2.py and ec2.ini...\n"

cp ec2.py /etc/ansible/

echo "ec2.py copied to /etc/ansible/ec2.py\n"

cp ec2.ini /etc/ansible/

echo "ec2.ini copied to /etc/ansible/ec2.ini\n"