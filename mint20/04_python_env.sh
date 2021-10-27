#!/bin/bash

# This script is based on
# https://medium.com/welcome-to-the-django/guia-definitivo-para-organizar-meu-ambiente-python-a16e2479b753
# https://www.marc-richter.info/using-pyenv-to-manage-your-python-interpreters/
# https://mintguide.org/tools/921-pyenv-simple-python-version-management.html

PYTHON3_VERSION='3.9.7'

# TODO
# https://gist.github.com/luzfcb/1a7f64adf5d12c2d357d0b4319fe9dcd

sudo apt-get install -y aria2 build-essential libbz2-dev libffi-dev liblzma-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev llvm make tk-dev  xz-utils zlib1g-dev python3-pip;
pip3 uninstall virtualenv
sudo apt-get install -y python3-virtualenv

#sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git -y

# Extra for (WSL)
# sudo apt-get install -y gettext tcl-dev blt-dev libgdbm-dev python-dev python3-dev libnss3-tools python3-venv libpq-dev keychain;
# pip install --upgrade pip

export WORKON_HOME=$HOME/.ve
export PROJECT_HOME=$HOME/workspace

# Install pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# Not installing virtualenvwrapper plugin to pyenv
#git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git $HOME/.pyenv/plugins/pyenv-virtualenvwrapper

mkdir -p ~/.ve

source $HOME/.zshrc
exec $SHELL

# Instala python 3 mais recente
pyenv install $PYTHON3_VERSION

pyenv virtualenv $PYTHON3_VERSION py3tools

pyenv activate py3tools

pip install ansible cookiecutter commitizen

pyenv deactivate


# set the path order
pyenv global $PYTHON3_VERSION py3tools

# echo 'pyenv virtualenvwrapper' >> ~/.bashrc
# restart shell
exec $SHELL

# checking
pyenv which python
pyenv which ansible


# Using pyenv
mkdir pythonprj
cd pythonprj 
pyenv versions
  system
* 3.9.7 (set by /home/huogerac/.pyenv/version)

pyenv virtualenv 3.9.7 pythonprj-397
pyenv local pythonprj-397

pyenv activate pythonprj-397
pyenv deactivate

