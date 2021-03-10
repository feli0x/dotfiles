#!/usr/bin/env bash
# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║     
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
# https://www.tgifelix.com/dotfiles

# Themes & Plugins
if [[ -n $SSH_CONNECTION ]]; then
  fpath+=$HOME/.zsh/typewritten
  autoload -U promptinit; promptinit
  prompt typewritten
  source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
else
  source $HOME/.zsh/geometry/geometry.zsh
  source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
fi

# Sudo
source $HOME/dotfiles/plugins/sudo.zsh

# Aliases & Functions
source $HOME/.aliases
source $HOME/.functions

# Syntax Highlighting
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Exa
(($+commands[exa])) && alias \
 ls='exa -la --sort=modified' \
 l='exa -a'

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt append_history
setopt inc_append_history
setopt hist_reduce_blanks
setopt hist_ignore_space

# Options
setopt no_beep
setopt correct
setopt AUTO_CD
