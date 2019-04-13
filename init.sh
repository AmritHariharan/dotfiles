#!/bin/bash

# Run this in the dotfiles folder

# Vim
ln -s $(pwd)/init.vim ~/.vimrc
ln -s $(pwd)/.vim ~/.vim

# Zsh
ln -s $(pwd)/.zshrc ~/.zshrc

# tmux
ln -s $(pwd)/tmux.conf ~/.tmux.conf

# ssh
ln -s $(pwd)/ssh_config ~/.ssh/config
