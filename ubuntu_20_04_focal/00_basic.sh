#!/bin/bash

# Essencial
sudo apt update
sudo apt install -y git vim wget curl openssh-server htop gitk

# Battery saver
sudo apt install -y tlp tlp-rdw
sudo tlp start
sudo systemctl enable tlp

# Drivers
# sudo ubuntu-drivers autoinstall
# sudo apt autoremove

# Git alias and collors
cp ../.gitconfig ~/

# Add to ~/.bashrc
# PS1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "


# CODECS
# sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg
# sudo dpkg-reconfigure libdvd-pkg
