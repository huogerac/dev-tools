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
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

## TODO
# Renzo docker instalation
sudo apt remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose
sudo usermod -aG docker $USER