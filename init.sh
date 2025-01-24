#!/bin/bash
# Run this in the dotfiles folder
ln -sf $(pwd)/zsh/.zshrc ~/.zshrc
ln -sf $(pwd)/ssh/config ~/.ssh/config
ln -snf $(pwd)/hx ~/.config/helix
ln -sf $(pwd)/starship/starship.toml ~/.config/starship.toml
ln -snf $(pwd)/alacritty ~/.config/alacritty
