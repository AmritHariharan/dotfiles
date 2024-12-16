#!/bin/bash
# Run this in the dotfiles folder
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/tmux.conf ~/.tmux.conf
ln -s $(pwd)/ssh_config ~/.ssh/config
ln -s $(pwd)/helix_config.toml ~/.config/helix/config.toml
