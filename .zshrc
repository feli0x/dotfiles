#
# ████████╗ ██████╗ ██╗███████╗███████╗██╗     ██╗██╗  ██╗
# ╚══██╔══╝██╔════╝ ██║██╔════╝██╔════╝██║     ██║╚██╗██╔╝
#    ██║   ██║  ███╗██║█████╗  █████╗  ██║     ██║ ╚███╔╝ 
#    ██║   ██║   ██║██║██╔══╝  ██╔══╝  ██║     ██║ ██╔██╗ 
#    ██║   ╚██████╔╝██║██║     ███████╗███████╗██║██╔╝ ██╗
#    ╚═╝    ╚═════╝ ╚═╝╚═╝     ╚══════╝╚══════╝╚═╝╚═╝  ╚═╝
# WORK IN PROGRESS - https://www.tgifelix.com/dotfiles/zshrc

# Themes
if [[ -n $SSH_CONNECTION ]]; then
  fpath+=$HOME/.zsh/typewritten
  autoload -U promptinit; promptinit
  prompt typewritten
  export TYPEWRITTEN_PROMT_LAYOUR="singleline"
  export TYPEWRITTEN_RELATIVE_PATH="adaptive"
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
else
  source $HOME/.zsh/geometry/geometry.zsh
  source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
fi

# Aliases
source $HOME/.aliases

# Syntax Highlighting
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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

