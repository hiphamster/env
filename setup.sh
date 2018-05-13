#!/bin/bash
source env_tools.sh
OS=$(uname -s | tr '[A-Z]' '[a-z]')
ENV_HOME="${HOME}/.config/env"
mkdir -p $ENV_HOME

# bash or zsh
_SHELL=$(echo $SHELL | awk -F '/' '{print $NF}')

FILE_PATH="${ENV_HOME}/${OS}/${_SHELL}"
DOT_FILES=($(ls -1 ${FILE_PATH}))

DOT_BAK="${HOME}/dot_bak"
mkdir -p $DOT_BAK

for file in ${DOT_FILES[@]}; do
  source="${FILE_PATH}/${file}"
  destination="${HOME}/.${file}"
  [ -f $destination ] && mv $destination ${DOT_BAK}/
  command="ln -s $source $destination"
  # in zsh $command has to be evaled
  eval $command
done

# oh-my-zsh theme customization
destination="${HOME}/.oh-my-zsh/themes/robbyrussell-ay.zsh-theme"
command="ln -s $(pwd)/robbyrussell-ay.zsh-theme $destination"
[ -f $destination ] || eval $command
