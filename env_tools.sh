#!/bin/bash

test -d ~/.oh-my-zsh || \
  curl -L -o - https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | zsh

test -d ~/.tmux/tpm || \
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

test -d ~/.plenv || \
  git clone https://github.com/tokuhirom/plenv.git ~/.plenv

test -d ~/.pyenv || \
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv

test -d ~/.pyenv/plugins/pyenv-virtualenv || \
  git clone https://github.com/pyenv/pyenv-virtualenv.git \
  ~/.pyenv/plugins/pyenv-virtualenv

test -d ~/.vim/bundle || \
  git clone https://github.com/VundleVim/Vundle.vim.git \
  ~/.vim/bundle/Vundle.vim
