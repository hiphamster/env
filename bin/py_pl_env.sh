#!/bin/zsh

# perl
test -d ~/.plenv || \
  git clone https://github.com/tokuhirom/plenv.git ~/.plenv

# python
test -d ~/.pyenv || \
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv

test -d ~/.pyenv/plugins/pyenv-virtualenv || \
  git clone https://github.com/pyenv/pyenv-virtualenv.git \
  ~/.pyenv/plugins/pyenv-virtualenv
