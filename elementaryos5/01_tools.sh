#!/bin/bash

# OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Better Terminal (tilix)
sudo apt-get install -y tilix
echo 'if [ $TILIX_ID ] || [ $VTE_VERSION ]; then' >> ~/.zshrc
echo '   source /etc/profile.d/vte-2.91.sh' >> ~/.zshrc
echo 'fi' >> ~/.zshrc
# sudo update-alternatives --config x-terminal-emulator
# Add custom shortcut (CTRL + T) to /usr/bin/tilix

# Better Launcher (Albert - cmd + shift + space)
cd ~/Downloads
wget https://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_18.04/amd64/albert_0.17.2-0_amd64.deb
sudo gdebi albert_0.17.2-0_amd64.deb
cd -

# VSCODE
cd ~/Downloads
wget 'https://az764295.vo.msecnd.net/stable/3c4e3df9e89829dce27b7b5c24508306b151f30d/code_1.55.2-1618307277_amd64.deb'
sudo dpkg -i code_1.55.2-1618307277_amd64.deb 

# Google chrome
# download from https://www.google.com/chrome/index.html
# sudo gdebi google-chrome-stable_current_amd64.deb

# Shell Utilities
sudo apt install -y silversearcher-ag tree wget

# Graphical tools
sudo apt install -y Kompare gitk


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

# Postman (https://www.postman.com/) - Alternative: VSCode Thunder Client
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
