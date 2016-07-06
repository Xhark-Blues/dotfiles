#!/bin/bash

CURRENT_DIR=`pwd -P`

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

# SETUP PLUGIN LOADERS
echo DOWNLOADING/UPDATING PLUGIN LOADERS
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ ! -d $HOME/.tmux/plugins/tpm/.git ]
then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    cd ~/.tmux/plugins/tpm
    git pull https://github.com/tmux-plugins/tpm
fi

curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

echo PLUGIN LOADERS UPDATED

# LINK CONFIGURATIONS
echo LINKING CONFIGURATIONS...
rm -fr ~/.tmux.conf
ln -s $CURRENT_DIR/.tmux.conf $HOME/.tmux.conf

mkdir -p $XDG_CONFIG_HOME/fish
rm -fr $XDG_CONFIG_HOME/fish/config.fish
ln -s $CURRENT_DIR/config.fish $XDG_CONFIG_HOME/fish/config.fish

rm -fr $XDG_CONFIG_HOME/nvim/init.vim
ln -s $CURRENT_DIR/init.vim $XDG_CONFIG_HOME/nvim/init.vim

rm -fr $HOME/$TERM.ti

ln -s $CURRENT_DIR/$TERM.ti $HOME/$TERM.ti

echo CONFIGURATIONS LINKED.
