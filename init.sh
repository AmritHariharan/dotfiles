#!/bin/bash
# Run this in the dotfiles folder
ln -s $(pwd)/zsh/.zshrc ~/.zshrc
ln -s $(pwd)/ssh/config ~/.ssh/config
ln -s $(pwd)/hx ~/.config/helix
ln -s $(pwd)/starship/starship.toml ~/.config/starship.toml
ln -s $(pwd)/alacritty ~/.config/alacritty
