#!/bin/bash

# source: 
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04

sudo apt-get remove docker docker.io containerd runc
sudo apt update


sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose

sudo systemctl status docker
docker -v
docker-compose -v


# https://docs.docker.com/install/linux/linux-postinstall/
# sudo groupadd docker
sudo usermod -aG docker ${USER}
su - ${USER}
groups


sudo usermod -aG docker username   ## update the username string



