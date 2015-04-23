#!/bin/sh

echo "Installing some elementary os tweaks ..."
sudo apt-add-repository ppa:mpstark/elementary-tweaks-daily
sudo apt-get update
sudo apt-get install elementary-tweaks
echo "DONE"
