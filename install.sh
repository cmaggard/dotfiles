#!/bin/bash
dotfiles="$HOME/.dotfiles"
files="autotest gemrc gitconfig gitignore inputrc osx_specific powconfig rdebugrc rspec tmux.conf work zshenv zshrc"

for file in $files; do
  rm $HOME/.$file
  ln -s $dotfiles/$file $HOME/.$file
done
