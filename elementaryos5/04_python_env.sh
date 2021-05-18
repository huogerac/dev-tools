#!/bin/bash

# This script is based on
# https://medium.com/welcome-to-the-django/guia-definitivo-para-organizar-meu-ambiente-python-a16e2479b753
#  https://www.marc-richter.info/using-pyenv-to-manage-your-python-interpreters/

PYTHON2_VERSION='2.7.17'
PYTHON3_VERSION='3.8.9'

# TODO
# https://gist.github.com/luzfcb/1a7f64adf5d12c2d357d0b4319fe9dcd

sudo apt-get install -y aria2 build-essential libbz2-dev libffi-dev liblzma-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev llvm make tk-dev  xz-utils zlib1g-dev;
# pip install --upgrade pip

# sudo apt install python3-pip
# sudo pip3 install virtualenvwrapper

# Install pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# Install virtualenvwrapper plugin to pyenv
git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git $HOME/.pyenv/plugins/pyenv-virtualenvwrapper

# Add pyenv configurations to the .zshrc file
if ! egrep -q "^[#]{4}[[:space:]]pyenv[[:space:]]config$" "${HOME}/.zshrc" ; then echo -e "\n\nsetup pyenv configuration:\nThe following content was inserted at the end of the ${HOME}/.zshrc file\n"; echo -e '\n#### pyenv config\nif [ -f "$HOME/.pyenv/bin/pyenv" ] && ! type -P pyenv &>/dev/null ; then\n  export PYTHON_CONFIGURE_OPTS="--enable-shared"\n  export CFLAGS="-O2"\n  export PYTHON_BUILD_ARIA2_OPTS="-x 10 -k 1M"\n  export PATH="$HOME/.pyenv/bin:$PATH"\n  eval "$(pyenv init -)"\n  eval "$(pyenv virtualenv-init -)"\n  if [[ ! "$(pyenv which python)" == "/usr/bin/python" ]] ; then \n    pyenv virtualenvwrapper_lazy;\n  fi\nfi\n#### pyenv config end' | tee --append "${HOME}/.zshrc"; source "$HOME/.zshrc"; else  echo -e "\n\npyenv configuration already installed in $HOME/.zshrc"; fi

mkdir -p ~/.ve

source $HOME/.zshrc
exec $SHELL

# Instala python 2 e 3 via pyenv
pyenv install $PYTHON2_VERSION
pyenv install $PYTHON3_VERSION

# git clone https://github.com/yyuu/pyenv.git ~/.pyenv
# git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
# git clone https://github.com/yyuu/pyenv-virtualenvwrapper.git ~/.pyenv/plugins/pyenv-virtualenvwrapper

# echo 'export WORKON_HOME=~/.ve' >> ~/.bashrc
# echo 'export PROJECT_HOME=~/workspace' >> ~/.bashrc
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
# echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# export PATH="/home/roger/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# reload .zshrc to run pyenv configurations


pyenv virtualenv $PYTHON3_VERSION py3tools

pyenv activate py3tools
pip install ansible
pip install cookiecutter
pip install bpython
pip install bpytop

pyenv deactivate


# pyenv activate jupyter3
# pip install jupyter
# pip install ipykernel
# python -m ipykernel install --user
# pyenv deactivate

# pip install flake8
# pyenv deactivate


# set the path order
pyenv global $PYTHON3_VERSION $PYTHON2_VERSION py3tools

# echo 'pyenv virtualenvwrapper' >> ~/.bashrc
# restart shell
exec $SHELL

# checking
pyenv which python
pyenv which ansible

# usage samples:

# mkproject newproject_py3
# workon newproject_py3

# mkvirtualenv -a ~/workspace/existing_py2 -p python2 existing_py2
