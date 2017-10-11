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
