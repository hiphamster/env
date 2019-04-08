#!/bin/bash


git config --global user.email "ayelluas@gmail.com"
git config --global user.name "Alex Yelluas"


# install oh-my-zsh
test -d ~/.oh-my-zsh || \
  curl -L -o - https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | zsh

OS=$(uname -s | tr '[A-Z]' '[a-z]')
ENV_HOME="${HOME}/.config/env"
mkdir -p $ENV_HOME

# bash or zsh
SHELL=${1:-zsh}

FILE_PATH="${ENV_HOME}/${OS}/${SHELL}"
DOT_FILES=($(ls -1 ${FILE_PATH}))

for file in ${DOT_FILES[@]}; do
  source="${FILE_PATH}/${file}"
  destination="${HOME}/.${file}"
  [ -f $destination ] && rm -f $destination
  command="ln -s $source $destination"
  # in zsh $command has to be evaled
  eval $command
done

# oh-my-zsh theme customization
destination="${HOME}/.oh-my-zsh/themes/robbyrussell-ay.zsh-theme"
command="ln -s $(pwd)/robbyrussell-ay.zsh-theme $destination"
[ -f $destination ] || eval $command

# nvim plugin manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
