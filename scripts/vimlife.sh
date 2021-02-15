#!/bin/sh

# COLORS
color_off='\033[0m'
color='\033[1;35m'

# FANCYPRINT
fancyprint () {
    printf '%b\n' "$1$2$color_off" >&2
}

# VUNDLE
fancyprint ${color} ' >> CLONING VUNDLE'
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# VIMRC
fancyprint ${color} ' >> COPYING .VIMRC'
if [ -f "$HOME/.vimrc" ]; then
    mv $HOME/.vimrc $HOME/.vimrc_backup
    cp $HOME/dotfiles/.vimrc $HOME/.vimrc
else 
    cp $HOME/dotfiles/.vimrc $HOME/.vimrc

fi

# PLUGINS (defined in .vimrc)
fancyprint ${color} ' >> INSTALLING PLUGINS'
vim -c 'PluginInstall' -c 'qa!'

# EXIT
fancyprint ${color} ' >> DONE! 🤙'
exit 0
