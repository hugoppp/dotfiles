#!/bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install \
  curl wget git \
  neovim \
  ripgrep \ 
  fzf \
  zsh \
  -y

#install neovim 0.5
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-install neovim
#neovim packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)
# zsh plugins
git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH/plugins/zsh-vi-mode

# dotnet
wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
# dotnet sdk
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-5.0

