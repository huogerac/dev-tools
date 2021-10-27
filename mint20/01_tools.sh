#!/bin/bash

# OhMyZsh
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# make it the default terminal
chsh -s $(which zsh)

# Better Terminal (tilix)
sudo apt-get install -y tilix
echo 'if [ $TILIX_ID ] || [ $VTE_VERSION ]; then' >> ~/.zshrc
echo '   source /etc/profile.d/vte-2.91.sh' >> ~/.zshrc
echo 'fi' >> ~/.zshrc
# sudo update-alternatives --config x-terminal-emulator
# Add custom shortcut (CTRL + T) to /usr/bin/tilix

# Better Launcher (Albert - cmd + shift + space)
# https://albertlauncher.github.io/installing/
cd ~/Downloads
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt update
sudo apt install albert
cd -

# Linux Dock
sudo apt install plank

# VSCODE
cd ~/Downloads
wget 'https://az764295.vo.msecnd.net/stable/3c4e3df9e89829dce27b7b5c24508306b151f30d/code_1.55.2-1618307277_amd64.deb'
sudo dpkg -i code_1.55.2-1618307277_amd64.deb 

# Google chrome
# download from https://www.google.com/chrome/index.html
# sudo gdebi google-chrome-stable_current_amd64.deb

# Shell Utilities
sudo apt install -y silversearcher-ag tree htop jq

# Graphical tools
sudo apt install -y gitk
# TODO: Kompare (not working on mint)

# Filtered history using arrow up
echo '## arrow up' >> ~/.inputrc
echo '"\e[A":history-search-backward' >> ~/.inputrc
echo '## arrow down' >> ~/.inputrc
echo '"\e[B":history-search-forward' >> ~/.inputrc


# Better CTRL + R (https://github.com/junegunn/fzf)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# https://snapcraft.io/install/code/elementary
# sudo apt install -y snapd
# sudo snap install code --classic

# Postman (https://www.postman.com/) - 
# Alternative: VSCode Thunder Client
cd ~/Downloads
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman


## get Postman to show up in the Unity Launcher:
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

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

