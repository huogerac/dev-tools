# Poderia ser um #!/bin/bash

# Essencial
sudo apt update && sudo apt install nala
sudo nala update
sudo nala install git vim wget curl openssh-server htop

# Better Terminal (terminator)
sudo nala install terminator
sudo update-alternatives --config x-terminal-emulator

# Second terminal 
https://app.warp.dev/

# Install a better shell prompt
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc


# (Alternative)
# sudo apt-get install -y tilix

# Gerenciador de senhas (https://www.passwordstore.org)
sudo nala install pass
# restaura bkp senhas  .password-store/ e pasta .gnupg/

# nala list -N        //lista os pacotes instalados
# nala history
# sudo nala history undo 2
# sudo nala remove --purge vim

# App Launcher & App Dock
- ulauncher.io 
    sudo add-apt-repository ppa:agornostal/ulauncher 
    sudo nala update && sudo nala install ulauncher
- Plank

# VSVODE
https://code.visualstudio.com/download

# Apps
- Gimp
- Peek
- Flameshot
- ttf-mscorefonts

# Git alias and collors
cp ../.gitconfig ~/

# Add alias in the .bashrc for Ç (ABTN2 Keyboard)
alias keyboardbr='setxkbmap -model abnt2 -layout br -variant abnt2'
alias keyboardus='setxkbmap -layout us -variant intl'


# Battery saver
sudo nala install tlp
sudo systemctl enable tlp --now

# (Alternative)
# PS1
#parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#}
#export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "


# CODECS
# sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg
# sudo dpkg-reconfigure libdvd-pkg

# BATTERY LIFE SAVER
# IMPORTANTE --> CHECK POWERTOP
 sudo nala install tlp tlp-rdw smartmontools
 sudo systemctl enable tlp
 sudo tlp start
 sudo systemctl status tlp.service
 sudo tlp-stat

 # To limit the charging % (this works for DELL, might not work other providers)
 sudo nala install smartmontools smbios-utils
 sudo smbios-battery-ctl --set-custom-charge-interval 75 80
 sudo smbios-battery-ctl --set-charging-mode=custom
 
 # To make it charge 100%
 sudo smbios-battery-ctl --set-charging-mode=adaptive

# Check the battery status/lifey cycle
upower --enumerate
upower -i /org/freedesktop/UPower/devices/battery_BAT0
sudo tlp-stat --battery
acpi -b