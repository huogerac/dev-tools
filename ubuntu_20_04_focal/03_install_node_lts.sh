#!/bin/bash

export NODE_VERSION='v14.19.3'

# Remove old or fixed nodejs installed
sudo apt-get remove nodejs
sudo apt-get remove npm
sudo apt purge nodejs
sudo apt autoremove


# check if there is NO node inside the /etc/apt/sources.list.d
sudo apt update

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# list latest versions to be installed
nvm ls-remote | grep -i 'latest'

# you can use nvm ls-remote to choose another version
nvm install $NODE_VERSION

nvm use $NODE_VERSION

nvm alias default $NODE_VERSION

nvm use default

node -v
npm -v

nvm ls