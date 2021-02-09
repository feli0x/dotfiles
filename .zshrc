#
# ████████╗ ██████╗ ██╗███████╗███████╗██╗     ██╗██╗  ██╗
# ╚══██╔══╝██╔════╝ ██║██╔════╝██╔════╝██║     ██║╚██╗██╔╝
#    ██║   ██║  ███╗██║█████╗  █████╗  ██║     ██║ ╚███╔╝ 
#    ██║   ██║   ██║██║██╔══╝  ██╔══╝  ██║     ██║ ██╔██╗ 
#    ██║   ╚██████╔╝██║██║     ███████╗███████╗██║██╔╝ ██╗
#    ╚═╝    ╚═════╝ ╚═╝╚═╝     ╚══════╝╚══════╝╚═╝╚═╝  ╚═╝
# WORK IN PROGRESS - https://www.tgifelix.com/dotfiles/zshrc

# Aliases
source $HOME/.aliases

# Theme
source $HOME/.zsh/geometry/geometry.zsh

# Plugins
source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
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
