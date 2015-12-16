#!/bin/sh

echo "Installing some elementary os tweaks ..."
sudo apt-add-repository ppa:mpstark/elementary-tweaks-daily
sudo add-apt-repository ppa:peterlevi/ppa
sudo apt-get update
sudo apt-get install elementary-tweaks variety
echo "DONE"
