#!/bin/bash
# Run this in the dotfiles folder
ln -s $(pwd)/zsh/.zshrc ~/.zshrc
ln -s $(pwd)/tmux.conf ~/.tmux.conf
ln -s $(pwd)/ssh/config ~/.ssh/config
ln -s $(pwd)/hx/config.toml ~/.config/helix/config.toml
