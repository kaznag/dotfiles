#!/bin/bash

# install nodebrew
if [ ! -d ~/.nodebrew ]; then
    curl -L git.io/nodebrew | perl - setup
fi

ln -sf ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -sf ~/.dotfiles/.bash_logout ~/.bash_logout
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.profile ~/.profile
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
