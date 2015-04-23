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
sudo apt-get install vim vim-gtk php5 php5-curl php5-gd php5-imagick php5-intl \
    php5-json php5-mcrypt php5-memcache php5-memcached php5-mongo php5-mysql \
    php5-pgsql php5-redis php5-sqlite php5-xdebug mysql-client mysql-server \
    mongodb sqlite ruby ruby-dev golang nodejs tmux tree git xclip openjdk-7-jre \
    curl firefox libxss1 libappindicator1 libindicator7 zsh
echo "DONE"

echo "Installing golang depencies ..."
export GOPATH="$HOME/.go"
export GOBIN="$HOME/.go/bin"
export GOROOT="/usr/lib/go"

mkdir ~/.go
mkdir ~/.go/bin
mkdir ~/.go/lib

go get github.com/peco/peco/cmd/peco
go get github.com/github/hub
echo "DONE"

echo "Nodejs dependencies ..."
sudo npm install -g bower gulp grunt-cli
echo "DONE"

echo "Ruby dependencies ..."
sudo gem install guard-ctags-composer tmuxinator
echo "DONE"

echo "Composer ... "
cd ~ && curl -sS https://getcomposer.org/installer | php && mv ~/composer.phar ~/.composer.phar
echo "DONE"

echo "Selenium server ..."
cd ~ && wget http://selenium-release.storage.googleapis.com/2.45/selenium-server-standalone-2.45.0.jar && mv ~/selenium-server-standalone-2.45.0.jar ~/.selenium-server-standalone
echo "DONE"

echo "Installing chrome ..."
cd ~ && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb
echo "DONE"
