#!/usr/bin/env bash
# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║     
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
# https://github.com/feli0x/dotfiles

# Themes & Plugins
if [[ -n $SSH_CONNECTION ]]; then
  fpath+=$HOME/.zsh/typewritten
  autoload -U promptinit; promptinit
  prompt typewritten
else
  source $HOME/.zsh/geometry/geometry.zsh

  GEOMETRY_STATUS_SYMBOL="🙂"
  GEOMETRY_STATUS_SYMBOL_ERROR="💀"
fi

# Sudo
source $HOME/dotfiles/plugins/sudo.zsh

# Aliases & Functions
source $HOME/.aliases
source $HOME/.functions

# Auto Suggestions
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

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
setopt AUTO_CD

# Fuzzy Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
