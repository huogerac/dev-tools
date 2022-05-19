#!/bin/bash

# Better Terminal (tilix)
sudo apt-get install -y tilix
sudo update-alternatives --config x-terminal-emulator

# Linux Dock
#sudo apt install plank

# VSCODE
cd ~/Downloads
#wget 'https://az764295.vo.msecnd.net/stable/3c4e3df9e89829dce27b7b5c24508306b151f30d/code_1.55.2-1618307277_amd64.deb'
#sudo dpkg -i code_1.55.2-1618307277_amd64.deb 

# Google chrome
# download from https://www.google.com/chrome/index.html
# sudo gdebi google-chrome-stable_current_amd64.deb

# Shell Utilities
sudo apt install -y silversearcher-ag tree jq


# Filtered history using arrow up
echo '## arrow up' >> ~/.inputrc
echo '"\e[A":history-search-backward' >> ~/.inputrc
echo '## arrow down' >> ~/.inputrc
echo '"\e[B":history-search-forward' >> ~/.inputrc


# Better CTRL + R (https://github.com/junegunn/fzf)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# ~/.fzf/uninstall to remove it


# Disk Tools
sudo apt install -y gnome-disk-utility ncdu

# Videos
sudo apt install -y ffmpeg vlc

# Cut videos
# https://github.com/mifi/lossless-cut
cd ~/.local/bin
wget https://github.com/mifi/lossless-cut/releases/latest/download/LosslessCut-linux.AppImage
chmod +x LosslessCut-linux.AppImage
cd -


## Virtualbox
sudo apt install virtualbox virtualbox-ext-pack

## DBEaver (Database clietnt)
## I rather prefer to not install Java :/
sudo apt -y install default-jdk

java -version

wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list

sudo apt update
sudo apt -y  install dbeaver-ce

# For fun
sudo apt -y  install hollywood

# ls enchancement
# https://www.linuxhowto.net/exa-a-modern-replacement-for-ls-command/

sudo apt-get install libgit2-dev cmake
curl https://sh.rustup.rs –sSf | sh
cd ~/Downloads
wget -c https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip
unzip exa-linux-x86_64-0.9.0.zip
sudo mv exa-linux-x86_64  /usr/local/bin/exa

exa --long --header --git

# Zoom
cd ~/Downloads
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo gdebi zoom_amd64.deb

