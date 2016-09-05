#!/bin/sh

echo "Installing dependencies, please wait ..."

user=`whoami`
dir=`dirname $0`

echo "PPA ..."
sudo add-apt-repository ppa:chris-lea/node.js
sudo add-apt-repository ppa:gophers/go
sudo add-apt-repository ppa:evarlast/golang1.4
echo "DONE"

echo "Update package list ..."
sudo apt-get update
echo "DONE"

echo "System dependencies ..."
sudo apt-get install vim vim-gtk php7.0 php7.0-curl php7.0-mongodb php7.0-gd php7.0-xml php7.0-intl php7.0-ldap php7.0-sqlite3 php7.0-mysql \
    mongodb sqlite ruby ruby-dev golang nodejs tmux tree git xclip openjdk-9-jre \
    curl firefox libxss1 libappindicator1 libindicator7 zsh terminator silversearcher-ag \
    htop lynx
echo "DONE"

echo "Installing golang depencies ..."
export GOPATH="$HOME/.go"
export GOBIN="$HOME/.go/bin"
export GOROOT="/usr/lib/go"

mkdir ~/.go
mkdir ~/.go/bin
mkdir ~/.go/lib
mkdir ~/.bin
mkdir ~/.cache

go get github.com/peco/peco/cmd/peco
go get github.com/github/hub
echo "DONE"

echo "Nodejs ..."
sudo npm install -g n
sudo n 5.0.0
sudo ln -s /usr/local/n/versions/node/5.0.0/bin/node /home/djeg/.bin/node
sudo ln -s /usr/local/n/versions/node/5.0.0/bin/node /home/djeg/.bin/nodejs
sudo ln -s /usr/local/n/versions/node/5.0.0/bin/npm /home/djeg/.bin/npm
sudo mv /usr/bin/nodejs{,old}
sudo mv /usr/bin/npm{,old}
sudo npm install -g bower gulp-cli
echo "DONE"

echo "Ruby dependencies ..."
sudo gem install guard-ctags-composer tmuxinator
echo "DONE"

echo "Composer ... "
cd ~ && curl -sS https://getcomposer.org/installer | php && mv ~/composer.phar ~/.bin/composer
echo "DONE"

echo "Selenium server ..."
cd ~ && wget http://selenium-release.storage.googleapis.com/2.45/selenium-server-standalone-2.45.0.jar && mv ~/selenium-server-standalone-2.45.0.jar ~/.selenium-server
echo "DONE"

echo "Installing chrome ..."
cd ~ && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb
echo "DONE"
