#
# ████████╗ ██████╗ ██╗███████╗███████╗██╗     ██╗██╗  ██╗
# ╚══██╔══╝██╔════╝ ██║██╔════╝██╔════╝██║     ██║╚██╗██╔╝
#    ██║   ██║  ███╗██║█████╗  █████╗  ██║     ██║ ╚███╔╝ 
#    ██║   ██║   ██║██║██╔══╝  ██╔══╝  ██║     ██║ ██╔██╗ 
#    ██║   ╚██████╔╝██║██║     ███████╗███████╗██║██╔╝ ██╗
#    ╚═╝    ╚═════╝ ╚═╝╚═╝     ╚══════╝╚══════╝╚═╝╚═╝  ╚═╝
#    WORK IN PROGRESS - https://www.tgifelix.com/dotfiles

# Themes/Plugins
if [[ -n $SSH_CONNECTION ]]; then
  fpath+=$HOME/.zsh/typewritten
  autoload -U promptinit; promptinit
  prompt typewritten
  source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
else
  source $HOME/.zsh/geometry/geometry.zsh
  source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
fi

# Theme Settings
export TYPEWRITTEN_PROMPT_LAYOUT="singleline"
export TYPEWRITTEN_RELATIVE_PATH="adaptive"
export GEOMETRY_STATUS_SYMBOL=""
export GEOMETRY_STATUS_SYMBOL_ERROR=""

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
setopt AUTO_CD

