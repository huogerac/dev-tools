#!/bin/bash

sudo apt update

# Essencial
sudo apt install -y git vim wget curl

# Dev libs
sudo apt install -y build-essential libssl-dev libz-dev libcurl4-gnutls-dev gettext zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev liblzma-dev libpq-dev keychain

# Git
git config --global user.name "Roger Camargo"
git config --global user.email "roger@python.pro.br"

# Git PS1 (add into the ~/.bashrc)
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# Settings / System / About / Rename this PC