#!/bin/bash
echo "Installing vim, please wait ..."

dir=`dirname $0`

cd ~ && ln -s $dir/vim $HOME/../.vim
cd ~ && ln -s $dir/vim/vimrc $HOME/../.vimrc

echo "Bundles ..."
vim +BundleInstall +qall
echo "😄  done"
