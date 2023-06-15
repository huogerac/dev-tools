#!/bin/bash

# Essencial
sudo apt update && sudo apt install nala
sudo nala update
sudo nala install git vim wget curl openssh-server htop

# Better Terminal (terminator)
sudo nala install terminator
sudo update-alternatives --config x-terminal-emulator

# (Alternative)
# sudo apt-get install -y tilix

# Gerenciador de senhas (https://www.passwordstore.org)
sudo nala install pass
# restaura bkp senhas  .password-store/ e pasta .gnupg/

# nala list -N        //lista os pacotes instalados
# nala history
# sudo nala history undo 2
# sudo nala remove --purge vim

# Battery saver
sudo nala install tlp
sudo systemctl enable tlp --now

# Apps
# Chrome, Plank, vscode

# Git alias and collors
cp ../.gitconfig ~/

# Install a better shell prompt
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# (Alternative)
# PS1
#parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#}
#export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "


# CODECS
# sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg
# sudo dpkg-reconfigure libdvd-pkg
