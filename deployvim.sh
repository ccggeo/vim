#!/usr/bin/env bash
bundle=$HOME/.vim/bundle
vundle=$bundle/Vundle.vim
colors=$HOME/.vim/colors

rm ~/.vimrc
cp vimrc ~/.vimrc 
# Download "VundleVim/Vundle.vim" Vim Plugin Manager
if [ ! -d $vundle ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $vundle
fi

if [ ! -d $colors ]; then
  mkdir ~/.vim/colors
  cp  colors/* ~/.vim/colors 
  git clone https://github.com/VundleVim/Vundle.vim.git $vundle
fi

# PluginInstall: "VundleVim/Vundle.vim" plugin's install command.
vim +PluginInstall +GoInstallBinaries +qall 
