#!/bin/bash

echo "Installing git configuration ..."

cd ~ && ln -s .dotfiles/git/gitconfig .gitconfig && \
    ln -s .dotfiles/git/gitignore .gitignore

echo "DONE"
