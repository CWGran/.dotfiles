#!/bin/bash
############################################################
###### 
######               Setup symlinks
###### 
############################################################

DOTDIR="$HOME/.dotfiles"

echo "Setting up dotfiles..."

# i3config
echo "Installing i3config..."
ln -sf $DOTDIR/i3config ~/.config/i3/config

# i3status
echo "Installing i3status..."
ln -sf $DOTDIR/i3status.conf /etc/i3status.conf

# bgscript
echo "Installing bgscript"
ln -sf $DOTDIR/.fehbg ~/.fehbg

# Xresources, for rofi
echo "Installing Xresources"
ln -sf $DOTDIR/.Xresources ~/.Xresources

# vimrc
echo "Installing vimrc..."
ln -sf $DOTDIR/.vimrc ~/.vimrc

# random scripts
echo "Installing random scripts..."

SCRIPTDIR=$DOTDIR"/scripts"

for file in $(ls scripts)
do
    echo "Installing $file..."
    ln -sf $SCRIPTDIR/$file ~/bin/$file
done


echo "Finished installing dotfiles"
