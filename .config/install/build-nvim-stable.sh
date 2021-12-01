#!/bin/bash

# Installs the latest stable build of NeoVim

## dependencies
sudo apt-get install -yqq ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen npm

cd $(mktemp -d)
git clone https://github.com/neovim/neovim --depth 1 --branch stable
cd neovim
sudo make CMAKE_BUILD_TYPE=Release install
cd ..
sudo rm -r neovim

sudo npm install -g neovim
