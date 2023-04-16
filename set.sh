#!/bin/bash

# install prerequisites
sudo apt-get update
sudo apt-get install -y gcc g++ curl vim zsh neofetch git

# change shell
chsh -s 'which zsh'

# install oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install vim vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy env files to home directory
cp ./.zshrc ~/.zshrc
cp ./.vimrc ~/.vimrc

# install vundle plugin
vim +PluginInstall +qall
