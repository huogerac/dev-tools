#!/bin/bash

# SOURCE
# https://blog.softhints.com/install-node-js-linux-mint/

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

nvm list-remote

# If you don't use OhMyZsh, change it to .bashrc

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.zshrc

source ~/.zshrc

nvm ls-remote | grep LTS

export NODE_VERSION='v14.18.1'

nvm install $NODE_VERSION
nvm use $NODE_VERSION
nvm alias default $NODE_VERSION
nvm use default

node -v
npm -v

npm install --global yarn

# Avoid the error: ENOSPC: System limit for number
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p


# Remove node
# sudo apt remove nodejs
# sudo apt purge nodejs
# sudo apt autoremove
