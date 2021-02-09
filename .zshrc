#
# ████████╗ ██████╗ ██╗███████╗███████╗██╗     ██╗██╗  ██╗
# ╚══██╔══╝██╔════╝ ██║██╔════╝██╔════╝██║     ██║╚██╗██╔╝
#    ██║   ██║  ███╗██║█████╗  █████╗  ██║     ██║ ╚███╔╝ 
#    ██║   ██║   ██║██║██╔══╝  ██╔══╝  ██║     ██║ ██╔██╗ 
#    ██║   ╚██████╔╝██║██║     ███████╗███████╗██║██╔╝ ██╗
#    ╚═╝    ╚═════╝ ╚═╝╚═╝     ╚══════╝╚══════╝╚═╝╚═╝  ╚═╝
# WORK IN PROGRESS - https://www.tgifelix.com/dotfiles/zshrc

# OS Config
case `uname` in
  Darwin)
    source $HOME/.macos
  ;;
  Linux)
    source $HOME/.debian
  ;;
esac

# Aliases
source $HOME/.aliases

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