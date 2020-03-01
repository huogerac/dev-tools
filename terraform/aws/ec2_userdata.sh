#!/bin/bash

# Update the apt package index:
sudo apt-get update

## Install Ansible requirements
sudo apt-get install -y python-minimal python-pip vim awscli

## Mesmas informações do bootstrap.sh
locale-gen pt_BR.UTF-8
sudo update-locale LANG=pt_BR.UTF-8
export LC_ALL="pt_BR.UTF-8"
export LC_CTYPE="pt_BR.UTF-8"
sudo dpkg-reconfigure locales

sudo mkdir -p /var/log/aweb/fluentd
sudo chown ubuntu:td-agent -R /var/log/aweb
sudo chmod 775 -R /var/log/aweb

pip install boto3
