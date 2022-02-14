#!/bin/bash

sudo apt update

# Essencial
sudo apt install -y git vim wget curl

# Dev libs
sudo apt install -y build-essential libssl-dev libz-dev libcurl4-gnutls-dev gettext zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev liblzma-dev libpq-dev keychain

# Git
git config --global user.name "Roger Camargo"
git config --global user.email "roger@python.pro.br"

# Git PS1
echo -e 'export PS1="\W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "' >> ~/.bashrc
