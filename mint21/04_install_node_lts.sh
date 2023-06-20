#!/bin/bash

#   CONTEXTO
# -=-=-=-=-=-=-=
# Quero um node mais novo (16), mas tenho vários projetos
# utilizando node 14 (deixar padrão), quero instalar versões do node com NVM 
# e tornar fácil a tarefa de utilizar versões diferentes

# em caso já tentou instalar o node, remova tudo
# Remove old or fixed nodejs installed (optional)
sudo apt-get remove nodejs
sudo apt-get remove npm
sudo apt purge nodejs
sudo apt autoremove


# check if there is NO node inside the /etc/apt/sources.list.d
sudo apt update

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash


# list latest versions to be installed
nvm ls-remote | grep -i 'latest'
#       v14.21.3   (Latest LTS: Fermium)
#       v16.20.0   (Latest LTS: Gallium)


# you can use nvm ls-remote to choose another version
# Instala versão 14 como padrão (default)
export NODE_VERSION='v14.21.3'
nvm install $NODE_VERSION
nvm use $NODE_VERSION
nvm alias default $NODE_VERSION

# Instala a 16 para projetos mais novos
nvm install v16.20.0

# para utilizar 14
nvm use default

# para utilizar 16
nvm use v16.20.0

# para ver a versão atual para uso
node -v
npm -v

# para ver as versões instaladas
nvm ls
