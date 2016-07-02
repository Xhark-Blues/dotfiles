#!/bin/bash

CURRENT_DIR=`pwd -P`

rm -fr ~/.vimrc
ln -s $CURRENT_DIR/.vimrc ~/.vimrc

rm -fr ~/.tmux.conf
ln -s $CURRENT_DIR/.tmux.conf ~/.tmux.conf
