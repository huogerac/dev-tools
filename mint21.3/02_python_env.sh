#!/bin/bash

# This script is based on
# https://medium.com/welcome-to-the-django/guia-definitivo-para-organizar-meu-ambiente-python-a16e2479b753
# https://www.marc-richter.info/using-pyenv-to-manage-your-python-interpreters/
# https://github.com/pyenv/pyenv/blob/master/COMMANDS.md
# TODO
# https://gist.github.com/luzfcb/1a7f64adf5d12c2d357d0b4319fe9dcd

sudo nala install aria2 build-essential libbz2-dev libffi-dev \
  liblzma-dev libncurses5-dev libncursesw5-dev libreadline-dev \
  libsqlite3-dev libssl-dev llvm make tk-dev libxml2-dev \
  libxmlsec1-dev xz-utils zlib1g-dev python3-pip

pip uninstall virtualenv
sudo nala install python3-virtualenv


# Install pyenv
#curl https://pyenv.run | bash
https://github.com/zaemiel/ubuntu-pyenv-installer

# Add the following line in the .bashrc to avoid the error activating the pyenv virtualenv
eval "$(pyenv init -)" 

# Adicionar alias para ativar venvs
# Não lembro a fonte desta dica, mas acredito que é algum do python real
alias ae='deactivate &> /dev/null; source ./.venv/bin/activate'
alias de='deactivate'

# Adiciona aqui a dica do Victor de ativar automaticamente
# com o hook de abrir pasta

exec $SHELL

pyenv versions
pyenv install -l | grep 3.11

export PYTHON3_VERSION='3.11.9'

# Instala python 3 mais recente
pyenv install $PYTHON3_VERSION
pyenv versions

# Cria 2 ambientes virtuais
pyenv virtualenv $PYTHON3_VERSION pytools
pyenv virtualenvs
pyenv activate pytools

pip install ansible cookiecutter commitizen

pyenv deactivate


# set the path order
pyenv global $PYTHON3_VERSION pytools

# echo 'pyenv virtualenvwrapper' >> ~/.bashrc
# restart shell
exec $SHELL

# checking
# pyenv which python
# pyenv which ansible
# pyenv local
# pyenv install --list | grep 3.10
# pyenv install --list | grep "3\.[81]"
# pyenv install 3.10.12
# pyenv virtualenv 3.10.12 pyenv310
# pyenv local pyenv310
# pyenv commands
# pyenv activate
# pyenv deactivate
# pyenv global
# pyenv install
# pyenv local
# pyenv uninstall
# pyenv --version
# pyenv version
# pyenv versions
# pyenv virtualenv-delete
# pyenv virtualenv-init
# pyenv virtualenvs
# pyenv which

# Uninstall Pyenv
rm -fr ~/.pyenv

# Remove PATH from .bashrc
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

















# TODO
# https://gist.github.com/luzfcb/1a7f64adf5d12c2d357d0b4319fe9dcd

sudo apt-get install postgresql-client libpq-dev

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
