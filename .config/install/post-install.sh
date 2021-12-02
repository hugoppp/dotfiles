#!/bin/bash

if [[ -z $POSTINSTALL_RUN ]]
then
  read -rp  "Already run, run again? [y/N] " response
  if [[ ! "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
  then
    exit
  fi
fi

read -rp  "Email: " EMAIL
read -rp  "Name: " NAME

sudo apt-get update -y && sudo apt-get upgrade -y

# pre dependencies
sudo apt-get install -yqq curl
# add node 16 to apt sources
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -

# install rest
sudo apt-get install\
  curl wget git\
  ripgrep\
  fzf\
  fd-find\
  zsh\
  unzip\
  gzip\
  nodejs\
  build-essential\
  -yqq


## build nvim from source
bash ./install-nvim.sh

# add symbolic link to fdfind as fd in path
ln -s $(which fdfind) /local/bin/fd

if [[ -n $NAME ]]
then
  ssh-keygen -t ed25519 -C "$EMAIL"
  git config --global user.name "$NAME"
  git config --global user.email "$EMAIL"
fi


# git config
# git config --global --add url."git@github.com:".insteadOf "https://github.com/"

# change remote of this repo to ssh
cd ~
git remote set-url origin git@github.com:hugoppp/dotfiles.git

# install neovim latest stable
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-install neovim -y

# install neovim packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)

# -- zsh plugins --
# zsh-vi-mode
git clone -depth=1 https://github.com/jeffreytse/zsh-vi-mode $ZSH/plugins/zsh-vi-mode
# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# zsh autosuggestions
git clone -depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# syntax highlight
git clone -depth=1 https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

export POSTINSTALL_RUN 
echo export POSTINSTALL_RUN >> ~/.zshrc

# dotnet
#wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
#sudo dpkg -i packages-microsoft-prod.deb
#rm packages-microsoft-prod.deb
# dotnet sdk
#sudo apt-get update; \
#  sudo apt-get install -y apt-transport-https && \
#  sudo apt-get update && \
#  sudo apt-get install -y dotnet-sdk-5.0

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

