#!/bin/bash

export NODE_VERSION='v10.15.0'

curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh

bash install_nvm.sh

# you can use nvm ls-remote to choose another version
nvm install $NODE_VERSION

nvm use $NODE_VERSION

nvm alias default $NODE_VERSION

nvm use default

node -v
npm -v


# Remove node
# sudo apt remove nodejs
# sudo apt purge nodejs
# sudo apt autoremove

