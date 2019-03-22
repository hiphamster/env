#!/bin/sh

# basic packages
sudo apt-file update
sudo apt-get install -y \
	make \
	build-essential \
	ack-grep \
	apt-file \
	curl \
       	git \
	neovim \
	zsh \
	w3m

# install docker
sudo apt-get install -y docker.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose


# docker without root
sudo groupadd docker
sudo usermod -aG docker $USER


#sudo apt-get install -y \
#	make \
#	build-essential 
#	libssl-dev \
#	zlib1g-dev \
#	libbz2-dev \
#	libreadline-dev \
#	libsqlite3-dev \
#	llvm \
#	libncurses5-dev \
#	libncursesw5-dev \
#	xz-utils \
#	tk-dev \
#	libffi-dev \
#	liblzma-dev \
#	python-openssl
