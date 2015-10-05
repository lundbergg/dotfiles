#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

##########

# Move old dotfiles and create links

# emacs
mv ~/.emacs $olddir
mv ~/.emacs.d $olddir
ln -s $dir/emacs ~/.emacs 
ln -s $dir/emacs.d ~/.emacs.d

# i3
mv ~/.i3 $olddir
ln -s $dir/i3 ~/.i3

# mpv
mv ~/.config/mpv $olddir
ln -s $dir/mpv ~/.config/mpv

# oh-my-zsh
mv ~/.oh-my-zsh $olddir
ln -s $dir/oh-my-zsh ~/.oh-my-zsh 

# ranger
mv ~/.config/ranger $olddir
ln -s $dir/ranger ~/.config/ranger

# zshrc 
mv ~/.zshrc $olddir
ln -s $dir/zshrc ~/.zshrc 

# Xdefaults
mv ~/.Xdefaults $olddir
ln -s $dir/Xdefaults ~/.Xdefaults
