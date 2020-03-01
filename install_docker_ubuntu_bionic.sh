#!/bin/bash

# https://docs.docker.com/install/linux/docker-ce/ubuntu/
sudo apt-get update
sudo apt install docker.io

sudo systemctl start docker
sudo systemctl enable docker

# https://docs.docker.com/install/linux/linux-postinstall/
sudo groupadd docker
sudo usermod -aG docker $USER
sudo gpasswd -a $USER docker


sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world

# Docker compose
# https://docs.docker.com/compose/install/
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
