
#Antigen
source $HOME/.antigen.zsh

# export TERM=screen-256color
# tic ~/$TERM.ti

# Autrun tmux
[[ $TERM != "screen-256color" ]] && exec tmux attach

export BROWSER=chromium

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
antigen bundle git
antigen bundle docker

if [ "$OSTYPE"="darwin11.0" ]; then
  antigen-bundle osx
fi

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions

# Geometry theme
antigen theme gallifrey

antigen apply

# Use vim as editor
export EDITOR='nvim'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

export PATH=$PATH:~/.local/bin:~/.cabal/bin:~/.gem/ruby/2.4.0/bin

# NVM ON Linux
export NVM_DIR="$HOME/.nvm"
source $NVM_DIR/nvm.sh
source $NVM_DIR/bash_completion

export GPG_TTY=`tty`

eval $(ssh-agent)


##
# Kubernetes and DevOps
##

if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi

function setupAWS() {
  if [ "$1" = "--unset" ]
  then
    unset AWS_ACCESS_KEY
    unset AWS_SECRET_ACCESS_KEY
  else
    export AWS_ACCESS_KEY=$(pass show repositive/aws/access)
    export AWS_SECRET_ACCESS_KEY=$(pass show repositive/aws/secret)
  fi
}

function kenv() {
  if [ "$1" != "" ]
  then
    setupAWS
    export KOPS_STATE_STORE="s3://k8s-$1-state-store"
    kops export kubecfg "k8s-$1.repositive.io"
  else
    setupAWS --unset
    unset KOPS_STATE_STORE
  fi
}

function dme() {
  if [ "$1" != "" ]
  then
     setupAWS
     eval $(docker-machine env "$1");
  else
    setupAWS --unset
    eval $(docker-machine env --unset);
  fi
}

if [[ $TERM = dumb ]]; then
  unset zle_bracketed_paste
fi

KEYTIMEOUT=1
