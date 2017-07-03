# as-ec2-test README

In order to use this, or any command line tools with AWS, you need to complete the aws cli setup.

* install aws cli for your OS - dependencies are python2.7 and pip, for me anyways
* boto will automatically be installed as well, boto is used to pass your credentials to aws, once aws cli is installed correctly you should be able to run:

aws configure
Enter your Access Key ID:
Enter your Secret Key:
Default region: us-west-1
Default output: json

This should be all that is needed, I specified the path /usr/bin/python for the playbook (this path is necessary for ansible)

As the playbook currently is - an t2.micro instance is created running AS 2.1.4 in us-west-1 with the label ansible-created-instance.  Please rename or terminate the instance you create so we can immediately tell if a new one is created.  Or change the variable name in host_vars/all