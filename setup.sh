#!/bin/bash

CURRENT_DIR=`pwd -P`

rm -fr $HOME/.vimrc
ln -s $CURRENT_DIR/.vimrc $HOME/.vimrc

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

rm -fr ~/.tmux.conf
ln -s $CURRENT_DIR/.tmux.conf $HOME/.tmux.conf

mkdir -p $HOME/.config/fish
rm -fr $HOME/.config/fish/config.fish
ln -s $CURRENT_DIR/config.fish $HOME/.config/fish/config.fish

rm -fr $XDG_CONFIG_HOME/nvim
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
rm -fr $XDG_CONFIG_HOME/nvim/init.vim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
