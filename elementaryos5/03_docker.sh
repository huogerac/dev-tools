#!/bin/bash

# https://docs.docker.com/install/linux/docker-ce/ubuntu/
sudo apt-get update
sudo apt install -y docker.io

sudo systemctl start docker
sudo systemctl enable docker

# https://docs.docker.com/install/linux/linux-postinstall/
# sudo groupadd docker
sudo usermod -aG docker $USER
sudo gpasswd -a $USER docker

# Docker compose
# https://docs.docker.com/compose/install/
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
