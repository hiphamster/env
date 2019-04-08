#!/bin/sh

apt-get update

sudo apt-get install -y  \
  ack-grep \
  apt-file \
  aria2
  build-essential \
  curl
  git
  libbz2-dev \
  libffi-dev \
  liblzma-dev \
  libncurses5-dev \ 
  libncursesw5-dev \
  libreadline-dev \ 
  libsqlite3-dev \
  libssl-dev \
  llvm \
  make \
  neovim 
  python-openssl \
  tk-dev \
  tmux
  wget
  xz-utils \
  zlib1g-dev \
  zsh 


user='alex'
password='hello123'
home="/home/${user}"
/usr/sbin/useradd -m -U -G sudo -s /bin/zsh ${user}
/bin/echo ${user}:${password} | /usr/sbin/chpasswd

mkdir -p "/home/${user}"
mkdir -p "/home/${user}/.config"
chown -R "${user}:${user}"


# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# docker
# apt-get install -y docker.io
# groupadd docker
# usermod -aG docker $USER
