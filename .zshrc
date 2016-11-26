
#Antigen
source $HOME/.antigen.zsh

export TERM=screen-256color

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

export EDITOR='nvim'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

export PATH=$PATH:~/.local/bin:~/.cabal/bin

export NVM_DIR="/Users/istar/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export GPG_TTY=`tty`

eval $(ssh-agent)

tic ~/$TERM.ti
