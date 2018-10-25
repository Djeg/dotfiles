#!/bin/bash
echo "Installing i3 configuration ..."

CDIR=`dirname $0`

ln -sd $CDIR/../i3 $CDIR/../../.i3

echo "😄  done"
