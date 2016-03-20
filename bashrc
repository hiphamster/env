shopt -s cmdhist
shopt -s histappend

# tmux likes it better
export TERM=screen
# set -o vi
# PS1="\u@\h:\w\n\$"
# export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\n\$'
# 01;32 <- bold
# 32 <- regular

# prevet ctrl-d from exiting current shell
set -o ignoreeof


test $HOME/.inputrc || set -o vi

export PS1="[\$(date \"+%D %H:%M:%S\")]"'[\[\033[32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]]\n\$'

# change prompt dynamically 
# export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'

#enables color in the terminal bash shell export
export CLICOLOR=1

#sets up the color scheme for list export
export LSCOLORS=gxfxcxdxbxegedabagacad
export EDITOR=vi
export GREP_COLOR='1;32'

special_files=(.aliases .functions .javarc .oraclerc .mysqlrc .postgres .vmware .inputrc .pyenvrc .lo)  
for file in ${special_files[@]}; do
  test -f ${HOME}/${file} && source ${HOME}/${file};
done

test -f ${HOME}/.pythonrc && export PYTHONSTARTUP="${HOME}/.pythonrc"

#vim:ts=2:sw=2:expandtab:syn=sh
