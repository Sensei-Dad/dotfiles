#!/bin/bash

# Install NeoVim and configs
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

tar -xzvf nvim-linux64.tar.gz
mv nvim-linux64 /usr/local/
rm -f nvim-linux64.tar.gz

python -m pip uninstall neovim pynvim
python -m pip install --user --upgrade pynvim

