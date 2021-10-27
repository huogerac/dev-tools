#!/bin/bash

sudo apt update

# Essencial
sudo apt install -y git vim wget curl

# Battery saver
sudo apt install -y tlp tlp-rdw
sudo tlp start
sudo systemctl enable tlp

# Drivers
# sudo ubuntu-drivers autoinstall

# Git alias and collors
cp ../.gitconfig ~/

# Add to ~/.bashrc
export PS1="\W$(__git_ps1 " (%s)")\$ "
export PS1="\[\033[01;32m\]\w\[\033[01;34m\]$(__git_ps1 " (%s)")\n\[\033[00m\]\$ "

# CODECS
# sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg
# sudo dpkg-reconfigure libdvd-pkg
