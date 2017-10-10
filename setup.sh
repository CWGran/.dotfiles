#!/bin/bash
############################################################
###### 
######               Setup symlinks
###### 
############################################################

DOTDIR="$HOME/.dotfiles"

echo "$DOTDIR"

# i3config
echo "Copying i3config"
ln -sf $DOTDIR/i3config ~/.config/i3/config

# vimrc
echo "Copying vimrc"
ln -sf $DOTDIR/.vimrc ~/.vimrc

# random scripts
echo "Copying random scripts"

SCRIPTDIR=$DOTDIR"/scripts"

for file in $(ls scripts)
do
    echo "Copying $file"
    ln -sf $SCRIPTDIR/$file ~/bin/$file
done


echo "Finished"
