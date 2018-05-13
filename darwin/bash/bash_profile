# interactive
test -f ${HOME}/.bashrc && source ${HOME}/.bashrc 

mac () {
  export MACPORTS_HOME="/opt/local"
  export MANPATH="${MACPORTS_HOME}/share/man:${MANPATH}"
  export PATH=${PATH}:/usr/bin:/usr/sbin:${HOME}/bin
}

linux () {
  PATH="${PATH}:${HOME}/bin"

  # plenv
  if [ -d ${HOME}/.plenv ]; then
    export PATH="$HOME/.plenv/bin:$PATH"
    eval "$(plenv init -)"
  fi

  # rbenv
  if [ -d ${HOME}/.rbenv ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
  fi
}

if [ "$(expr $OSTYPE : darwin)" -gt "0" ]; then  
  mac;   
elif [ "$(expr $OSTYPE : linux)" -gt "0" ]; then  
  linux;
else
  echo "no match"
fi

export PATH MANPATH
unset mac linux

export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export HISTIGNORE='pwd:ls:history:'
export HISTSIZE=4096
export EDITOR='/usr/bin/vim'
export AUTOSSH_POLL=30
# eval `dircolors`

shopt -s checkwinsize

#Mac OS X 10.8.4 uses a newer version of ssh.  If you ssh to a box, and then,
#from there, to another box (with the -A flag), it won't forward the key 
# properly the second time.  To fix this, you can run ssh-add first.  To 
# allow yourself to forget #about this again, put the below snippet into 
# your Mountain Lion .bash_profile
#if [ -f ~/.ssh/id_rsa ]; then
#    # Mountain Lion requires ssh-add to properly forward keys.
#    ssh-add -K ~/.ssh/id_rsa 2> /dev/null
#fi

if [ -f ~/.remember ]; then
  echo "Don't forget:"
  i=1;
  while read line; do
    echo "$i $line";
    (( i=$i+1 ));
  done < ~/.remember
fi

# When i ssh to a host, i want tmux to start automatically.
# Default session name is FOO. If tmux is down (no sessions)
# a new session FOO is created, and attached to. TMUX var is
# also set, to indicate that tmux is running. If tmux is up,
# and session FOO exists, it's attached to automatically. 
# caveat - tmux always starts login shells, which run 
# ~/.bash_profile # in order not try start tmux on every new 
# shell invocation, TMUX var is checked, tmux is started
# only if it's not set.

tmux_on_startup() {
  sessions=$(tmux ls 2>&1)
  # perl will return the string if it matches
  foo_is_up="$(echo $sessions | perl -e 'print <> =~ /(FOO)/;')"
  tmux_cmd=$(which tmux)

  # FOO is default session
  if [ "$foo_is_up" == "FOO" ]; then
    # echo "FOO is up";
    $tmux_cmd attach -t FOO
  else
    # echo 'FOO is down';
    $tmux_cmd new -s FOO
  fi
  export export TMUX=1;
}

#if [ -z $TMUX ]; then
#  tmux_on_startup;
#fi

#vim:ts=2:sw=2:expandtab:syn=sh
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
