ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/felix/.oh-my-zsh"

# Theme
ZSH_THEME="agnoster"

# Auto Update
DISABLE_UPDATE_PROMPT="true"

# Waiting Dots.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(brew node osx sudo docker)

source $ZSH/oh-my-zsh.sh

# Aliases
source $HOME/.aliases
