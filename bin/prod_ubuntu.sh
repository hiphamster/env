#!/bin/sh

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

# docker without root
sudo apt-get install -y docker.io
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
