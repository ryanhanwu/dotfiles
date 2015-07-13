#!/bin/sh
set -x
cd ~/dotfiles/
ln -s `pwd`/vim ~/.vim
ln -s `pwd`/vim/vimrc ~/.vimrc
ln -s `pwd`/.zshrc ~/.zshrc
ln -s `pwd`/.gitconfig ~/.gitconfig
ln -s `pwd`/gitignore ~/.gitignore
ln -s `pwd`/.tmux.conf ~/.tmux.conf
