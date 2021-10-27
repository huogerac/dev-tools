#!/bin/bash

# https://www.linuxshelltips.com/install-docker-in-linux-mint/
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  focal stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose

# https://docs.docker.com/install/linux/linux-postinstall/
# sudo groupadd docker
sudo usermod -aG docker $USER
sudo gpasswd -a $USER docker

docker -v
docker-compose -v
