#!/bin/bash
echo "Installing gtk-3 configuration ..."

CDIR=`dirnmae $0`
THEMEDIR=$CDIR/../../.themes
APPDIR=$CDIR/../../.local/share/applications
ICONDIR=$CDIR/../../.icons

mkdir $THEMEDIR
mkdir $ICONDIR

cp -R $CDIR/../themes/Zukitwo $THEMEDIR
cp -R $CDIR/../icons/* $ICONDIR
cp -R $CDIR/../applications/* $APPDIR

echo "😄  done"
