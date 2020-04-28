#!/bin/bash
# Vagrant user customization

OS=$(uname -s | tr '[A-Z]' '[a-z]')
ENV_HOME="${HOME}/.config/env"
mkdir -p $ENV_HOME

sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

_SHELL=zsh

FILE_PATH="${ENV_HOME}/${OS}/${_SHELL}"

DOT_FILES=($(ls -1 ${FILE_PATH}))

for file in $DOT_FILES; do
  destination="${HOME}/.$file"
  command="ln -sf ${FILE_PATH}/${file} $destination"
  # in zsh $command has to be evaled
  eval $command
done

# oh-my-zsh theme customization
destination="${HOME}/.oh-my-zsh/themes/robbyrussell-ay.zsh-theme"

command="ln -s $(pwd)/robbyrussell-ay.zsh-theme $destination"
eval $command

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

git clone https://github.com/pyenv/pyenv-virtualenv.git \
  $HOME/.pyenv/plugins/pyenv-virtualenv

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

