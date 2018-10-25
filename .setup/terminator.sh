#!/bin/env bash

echo "Configuring terminator ..."
if [ ! -d "~/.config" ]; then
    mkdir ~/.config
fi

if [ ! -d "~/.config/terminator" ]; then
    mkdir ~/.config/terminator
fi

if [ -f "~/.config/terminator/config" ]; then
    rm ~/.config/terminator/config
fi

cd ~ && ln -s .dotfiles/terminator/config .config/terminator/config
echo "DONE"
