#!/bin/bash

# Run this in the dotfiles folder

# Vim
ln -s $(pwd)/.vim ~/.vim
ln -s $(pwd)/.vimrc ~/.vimrc

# Zsh
ln -s $(pwd)/.zshrc ~/.zshrc

# tmux
ln -s $(pwd)/tmux.conf ~/.tmux.conf
