#!/bin/bash

echo "
|---------------------------------------------|
|    ___  ___  _____  ________  __    __  __  |
|   /   \/___\/__   \/ __\_   \/ /   /__\/ _\ |
|  / /\ //  //  / /\/ _\  / /\/ /   /_\  \ \  |
| / /_// \_//  / / / / /\/ /_/ /___//__  _\ \ |
|/___,'\___/   \/  \/  \____/\____/\__/  \__/ |
|---------------------------------------------|

Processing ...

"

# Setup directories
dir=`dirname $0`
config="$dir/.config"
nvimConfig="$dir/.config/nvim"
localDir="$HOME/.local"
localShare="$HOME/.local/share"
font="$HOME/.local/share/fonts"
pictures="$HOME/Pictures"
wallpappers="$HOME/Pictures/Wallpappers"

if [ ! -d "$localDir" ]; then
  mkdir $localDir
fi

if [ ! -d "$localShare" ]; then
  mkdir $localShare
fi

if [ ! -d "$config" ]; then
  mkdir $config
fi

if [ ! -d "$pictures" ]; then
  pictures="$HOME/Images"

  if [ ! -d "$pictures" ]; then
    pictures="$HOME/Pictures"
    mkdir $pictures
  fi
fi

# Install vim configuration

ln -s $dir/nvim $HOME/.config/nvim

# Install tmux configuration
ln -s $dir/tmux/conf $HOME/.tmux.conf

# Install zsh configuration
ln -s $dir/zshrc $HOME/.zshrc

# Install git configuration
ln -s $dir/git/gitconfig $HOME/.gitconfig
ln -s $dir/git/gitignore $HOME/.gitignore

# Install ag configuration
ls -s $dir/agignore $HOME/.agignore

# Install fonts
if [ -d "$font" ]; then
  rm -rf $font
fi

ln -s $dir/font $font

# Install wallpappers
ln -s $dir/wallpapper $wallpappers

# Install yaourt
sudo pacman -S yaourt

echo "Configuration and yaourt has been installed :-°"
echo ""
echo "You can add some packages and start using them:"
echo ". docker"
echo ". nvim"
echo ". node"
echo ". zsh"
echo ". tmux"
echo ". sylversearcher"
echo ". google-chrome"
echo "..."
echo "Bye °-O"

