#!/bin/bash
# Run this in the dotfiles folder
ln -s $(pwd)/zsh/.zshrc ~/.zshrc
ln -s $(pwd)/tmux.conf ~/.tmux.conf
ln -s $(pwd)/ssh/config ~/.ssh/config
ln -shF $(pwd)/hx ~/.config/helix
ln -s $(pwd)/starship/starship.toml ~/.config/starship.toml
ln -shF $(pwd)/alacritty ~/.config/alacritty
