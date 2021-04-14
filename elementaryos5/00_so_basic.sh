#!/bin/bash

sudo apt update

# Essencial
sudo apt install -y gdebi zsh git vim htop wget curl

# Battery saver
sudo apt install -y tlp tlp-rdw
sudo tlp start
sudo systemctl enable tlp

# Drivers
sudo ubuntu-drivers autoinstall

# Git alias and collors
cp ../.gitconfig ~/

# CODECS
# sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg
# sudo dpkg-reconfigure libdvd-pkg
