#!/bin/bash
source env_tools.sh
OS=$(uname -s | tr '[A-Z]' '[a-z]')
ENV_HOME="${HOME}/.config/env"
mkdir -p $ENV_HOME

# bash or zsh
_SHELL=$(echo $SHELL | awk -F '/' '{print $NF}')

FILE_PATH="${ENV_HOME}/${OS}/${_SHELL}"
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
