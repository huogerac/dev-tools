#!/bin/bash

sudo apt update
sudo apt upgrade

sudo apt-get install ubuntu-restricted-extras htop gnupg2

# Show the minimize button
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true

# Move launcher to the bottom
gsettings set com.canonical.Unity.Launcher launcher-position Bottom

# Battery life saver
sudo apt-get install tlp tlp-rdw
sudo systemctl enable tlp

# Remove report
sudo apt remove apport apport-gtk


sudo apt install vlc

# albert
# https://software.opensuse.org/download.html?project=home:manuelschneid3r&package=albert
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list"
sudo apt-get update
sudo apt-get install albert


# conky (system monitor)
sudo apt install conky

# Whatever (client for evernote)
# https://sourceforge.net/projects/whatever-evernote-client/files/v1.0.0/

# Peek (screen recorder)
$ sudo add-apt-repository ppa:peek-developers/stable
$ sudo apt-get update
$ sudo apt-get install peek

# gimp
$ sudo apt-get install gimp

# digiKam (best photo management)
sudo add-apt-repository ppa:philip5/extra
sudo apt update && sudo apt install digikam


#docker / docker compose
