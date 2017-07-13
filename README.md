# as-ec2-test README

In order to use this, or any command line tools with AWS, you need to complete the aws cli setup.

* install aws cli for your OS - dependencies are python2.7 and pip, for me anyways
* boto will automatically be installed as well, boto is used to pass your credentials to aws, once aws cli is installed correctly you should be able to run:

* There are some default scripts that AWS uses to communicate with ansible, included in this repo are ec2.py and ec2.ini
* Store these files at /etc/ansible on your machine, then set environment variables:
* export AWS_ACCESS_KEY_ID='your key'
* export AWS_SECRET_ACCESS_KEY='your secret key'
* export ANSIBLE_HOSTS=/etc/ansible/ec2.py
* export EC2_INI_PATH=/etc/ansible/ec2.ini

You can use a virtualenv to set these variables, or set them globally, I have had better success with virtualenv:
- pip install virtualenv
- virtualenv aws_env
- source aws_env/bin/activate

You will see the environment at the beginning of your cli prompt (aws_env), to deactivate the virtualenv
- deactivate

With that activated - /etc/ansible/ec2.py --list should produce results about images.  If any variables are missing add them to the environment

Now you are ready to interact with AWS, run the create script:

* ./create.sh

It will take a few minutes to complete, an instance is being created
This one is faster, enter yes if asked if you want to allow the connection:

* ./configure.sh

When that script has finished, terminate the instance at any time with:

* ./terminate.sh

We can add more testing commands to the configure.sh script as needed.
You can obviously also ssh into the instance once it is created, if needed.  Keypair is openvpn...