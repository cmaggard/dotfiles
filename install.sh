#!/bin/bash
dotfiles="$HOME/.dotfiles"
files="githelpers autotest gemrc gitconfig gitignore inputrc osx_specific powconfig rdebugrc rspec tmux.conf zshenv zshrc zshrc.zni iterm2"

for file in $files; do
  rm $HOME/.$file
  ln -s $dotfiles/$file $HOME/.$file
done
