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

# compton.conf
echo "Installing compton..."
ln -sf $DOTDIR/compton.conf ~/.config/compton.conf

# bgscript
echo "Installing bgscript"
ln -sf $DOTDIR/.fehbg ~/.fehbg

# Xresources, for rofi
echo "Installing Xresources"
ln -sf $DOTDIR/.Xresources ~/.Xresources

# vimrc
echo "Installing vimrc..."
ln -sf $DOTDIR/.vimrc ~/.vimrc

# dunstrc
echo "Installing dunstrc..."
ln -sf $DOTDIR/dunstrc ~/.config/dunst/dunstrc

# latexmk
echo "Installing latexmkrc"
ln -sf $DOTDIR/.latexmkrc ~/.latexmkrc

# random scripts
echo "Installing random scripts..."

SCRIPTDIR=$DOTDIR"/scripts"

for file in $(ls scripts)
do
    echo "Installing $file..."
    ln -sf $SCRIPTDIR/$file ~/bin/$file
done

echo "Custom copy for runelite"
ln -sf $SCRIPTDIR/runelite /opt/runelite/runelite

echo "Finished installing dotfiles"
