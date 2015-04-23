#!/bin/bash

echo "Installing fonts ..."

if [ ! -d "~/.local" ]; then
    mkdir ~/.local
fi
if [ ! -d "~/.local/share" ]; then
    mkdir ~/.local/share
fi
if [ ! -d "~/.local/share/fonts" ]; then
    mkdir ~/.local/share/fonts
fi

cp font/* ~/.local/share/fonts

echo "DONE"
