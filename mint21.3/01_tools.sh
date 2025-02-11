#!/bin/bash

# unzip 3270.zip -d ~/.fonts
# fc-cache -fv

# Filtered history using arrow up
echo '## arrow up' >> ~/.inputrc
echo '"\e[A":history-search-backward' >> ~/.inputrc
echo '## arrow down' >> ~/.inputrc
echo '"\e[B":history-search-forward' >> ~/.inputrc


# Better CTRL + R and Better file search (https://github.com/junegunn/fzf)
# cd ~/Downloads
# fzf  (instead of find . )
# ~/.fzf/uninstall to remove it
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
cd ~/.fzf
~/.fzf/install


# ripgrep -- tool for recursively text search
# rg text instead of cat | grep 'text'
# rg -e '[0-9]{2}:[0-9]{2}'
# rg --glob 'roam/*.org' text
# rg --glob 'roam/**/*.org' text
sudo nala install ripgrep

# 🦇 cat with steroids
sudo nala install bat
echo 'alias bat="batcat"' >> ~/.bashrc

#Alternative - Atuin
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
# Disable the up arrow as fzf search: (.bashrc)
# https://docs.atuin.sh/configuration/key-binding/#disable-up-arrow
eval "$(atuin init bash --disable-up-arrow)"

# Update the seetings (~/.config/atuin/config.toml)
style = "compact"
exit_mode = "return-query"

# Import commands
atuin import auto
atuin login  ## (get pass for huogerac at bitwarden)

# Shell Utilities
sudo nala install -y silversearcher-ag tree jq btop neofetch

# Better cmd helpers 
sudo nala install tldr
tldr -u
# tldr ps

# copy to clipboard
sudo nala install xclip
alias cbcopy='xclip -sel clip'

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

# Linter Dockerfile
sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.9.3/hadolint-Linux-x86_64
sudo chmod +x /bin/hadolint


# ls enchancement
# https://www.linuxhowto.net/exa-a-modern-replacement-for-ls-command/


# Zoom
#cd ~/Downloads
#wget https://zoom.us/client/latest/zoom_amd64.deb
#sudo gdebi zoom_amd64.deb

# file manager Mac style
 sudo add-apt-repository ppa:elementary-os/stable
 sudo nala update
 sudo nala install pantheon-files
 
# bitwarden
curl -fsSL 'https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb' -o 'bitwarden.deb'
sudo dpkg -i bitwarden.deb
rm bitwarden.deb

# docker-ctop
# https://github.com/bcicen/ctop
sudo nala install ca-certificates curl gnupg lsb-release
curl -fsSL https://azlux.fr/repo.gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/azlux-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/azlux-archive-keyring.gpg] http://packages.azlux.fr/debian stable main" | sudo tee /etc/apt/sources.list.d/azlux.list >/dev/null
sudo nala update
sudo nala install docker-ctop
# OR
sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.7/ctop-0.7.7-linux-amd64 -O /usr/local/bin/ctop
sudo chmod +x /usr/local/bin/ctop


# eza - better ls - https://github.com/eza-community/eza?tab=readme-ov-file
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo nala update
sudo nala install -y eza


# Better ls
wget https://github.com/lsd-rs/lsd/releases/download/v1.1.5/lsd_1.1.5_amd64.deb
sudo dpkg -i lsd_1.1.5_amd64.deb

# Docker Lazy: https://github.com/jesseduffield/lazydocker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
