



# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

sudo apt-get install apt-file
sudo apt-file update

apt-get install docker.io

apt-get install zsh neovim tmux curl git ack-grep


# docker without root
sudo groupadd docker
sudo usermod -aG docker $USER



# Other ports
#yes | sudo /opt/local/bin/port install antiword \
#aria2 \
#bzip2 \
#gd2 \
#gdbm \
#gnupg2 \
#gnutls \
#mariadb \
#mpg123 \
#mysql_select \
#mycli \
#parallel \
#pcre \
#perl5 \
#pgcli \
#python27 \
#python2_select \
#python36 \
#python3_select \
#python_select \
#readline \
#sqlite3 \
#tidy \
#tree \
#unzip \
#p7zip \


