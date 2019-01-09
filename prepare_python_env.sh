#!/bin/bash

# This script is based on
# https://medium.com/welcome-to-the-django/guia-definitivo-para-organizar-meu-ambiente-python-a16e2479b753

PYTHON2_VERSION='2.7.15'
PYTHON3_VERSION='3.5.6'

# TODO
# https://gist.github.com/luzfcb/1a7f64adf5d12c2d357d0b4319fe9dcd

sudo apt-get install -y git python-pip make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev
pip install --upgrade pip

sudo apt install python3-pip
sudo pip3 install virtualenvwrapper

git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
git clone https://github.com/yyuu/pyenv-virtualenvwrapper.git ~/.pyenv/plugins/pyenv-virtualenvwrapper

mkdir -p ~/.ve
mkdir -p ~/workspace

echo 'export WORKON_HOME=~/.ve' >> ~/.bashrc
echo 'export PROJECT_HOME=~/workspace' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

exec $SHELL

pyenv install $PYTHON2_VERSION
pyenv install $PYTHON3_VERSION

pyenv virtualenv $PYTHON3_VERSION jupyter3
pyenv virtualenv $PYTHON3_VERSION tools3

pyenv virtualenv $PYTHON2_VERSION ipython2
pyenv virtualenv $PYTHON2_VERSION tools2

pyenv activate jupyter3
pip install jupyter
pip install ipykernel
python -m ipykernel install --user
pyenv deactivate

pyenv activate tools3
pip install flake8
pyenv deactivate

pyenv activate ipython2
pip install ipykernel
python -m ipykernel install --user
pyenv deactivate

pyenv activate tools2
pip install fabric
pyenv deactivate

# set the path order
pyenv global $PYTHON3_VERSION $PYTHON2_VERSION jupyter3 ipython2 tools3 tools2

echo 'pyenv virtualenvwrapper' >> ~/.bashrc
# restart shell
exec $SHELL

# checking
pyenv which python
pyenv which python2
pyenv which jupyter
pyenv which ipython
pyenv which ipython2
pyenv which fab
pyenv which flake8

# usage samples:

# mkproject newproject_py3
# workon newproject_py3

# mkvirtualenv -a ~/workspace/existing_py2 -p python2 existing_py2
