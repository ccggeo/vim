#!/usr/bin/env bash
bundle=$HOME/.vim/bundle
vundle=$bundle/Vundle.vim

cp vimrc ~/.vimrc 

# Download "VundleVim/Vundle.vim" Vim Plugin Manager
if [ ! -d $vundle ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $vundle
fi

# PluginInstall: "VundleVim/Vundle.vim" plugin's install command.
vim +PluginInstall +GoInstallBinaries +qall 
