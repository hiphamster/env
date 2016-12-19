#
# Sets Oh My Zsh options.
#
# Authors:
#   Alex Yelluas <ayelluas@gmail.com>
#

# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell-ay"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
if [ -f $HOME/.aliases ]; then
  source $HOME/.aliases
fi

if [ -f $HOME/.functions ]; then
  source $HOME/.functions
fi

# OS X
if [ "$(uname -s)" = "Darwin" ];
then
  # ad macports to path
  PATH="$PATH:/opt/local/sbin:/opt/local/bin"
  PATH="$PATH:/Applications/VirtualBox.app/Contents/MacOS"
fi

export PATH="$PATH:$HOME/bin"

# export MANPATH="/usr/local/man:$MANPATH"

if [ -f $ZSH/oh-my-zsh.sh ]; then
  source $ZSH/oh-my-zsh.sh
fi

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# timeout after hitting 'esc' 
export KEYTIMEOUT=1

# do not share history files between shessions
setopt nosharehistory

# vi mode
bindkey -v

# Compilation flags
export ARCHFLAGS="-arch $(uname -m)"

# perl
export PLENV_ROOT="$HOME/.plenv"
export PATH="$PLENV_ROOT/bin:$PATH"

if [ -f ~/.plenv/completions/plenv.zsh ]; then
  source ~/.plenv/completions/plenv.zsh
fi
eval "$(plenv init - zsh)"

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if [ -f ~/.pyenv/completions/pyenv.zsh ]; then
  source ~/.pyenv/completions/pyenv.zsh
fi
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"
