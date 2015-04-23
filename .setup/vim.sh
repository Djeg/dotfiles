#!/bin/bash
echo "Installing vim, please wait ..."

cd ~ && ln -s .dotfiles/vim .vim
cd ~ && ln -s .dotfiles/vim/vimrc .vimrc

echo "Bundles ..."
vim +BundleInstall +qall
echo "😄  done"
