#!/bin/bash

# unzip 3270.zip -d ~/.fonts
# fc-cache -fv

# Filtered history using arrow up
echo '## arrow up' >> ~/.inputrc
echo '"\e[A":history-search-backward' >> ~/.inputrc
echo '## arrow down' >> ~/.inputrc
echo '"\e[B":history-search-forward' >> ~/.inputrc


# Better CTRL + R (https://github.com/junegunn/fzf)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
cd ~/.fzf
~/.fzf/install
# to REMOVE
# ~/.fzf/uninstall to remove it

# cd ~/Downloads
# fzf  OR find . | fzf

# Shell Utilities
sudo nala install -y silversearcher-ag tree jq btop neofetch

# Better cmd helpers 
sudo nala install tldr
tldr -u
# tldr ps

# Disk Tools
sudo nala install -y gnome-disk-utility ncdu

# Videos
sudo nala install -y ffmpeg vlc

# Cut videos
# https://github.com/mifi/lossless-cut
cd ~/.local/bin
wget https://github.com/mifi/lossless-cut/releases/latest/download/LosslessCut-linux.AppImage
chmod +x LosslessCut-linux.AppImage
cd -


## Virtualbox
sudo nala install virtualbox virtualbox-ext-pack

# For fun
sudo nala install hollywood cmatrix

# ls enchancement
# https://www.linuxhowto.net/exa-a-modern-replacement-for-ls-command/


# Zoom
#cd ~/Downloads
#wget https://zoom.us/client/latest/zoom_amd64.deb
#sudo gdebi zoom_amd64.deb
