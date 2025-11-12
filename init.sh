#!/bin/bash
# Run this in the dotfiles folder
ln -sf $(pwd)/zsh/.zshrc ~/.zshrc
ln -sf $(pwd)/ssh/config ~/.ssh/config
ln -snf $(pwd)/helix ~/.config
ln -sf $(pwd)/starship/starship.toml ~/.config/starship.toml
ln -snf $(pwd)/ghostty ~/.config
