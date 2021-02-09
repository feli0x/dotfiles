#!/bin/sh
color_off='\033[0m'
color1='\033[0;35m'
color2='\033[1;36m'
# nuke='$HOME/dotfiles $HOME/.zsh $HOME/.aliases $HOME/.debian $HOME/.macos $HOME/.zshrc'
# }}}
fancyprint () {
    printf '%b\n' "$1$2$color_off" >&2
}
# }}}
clear
echo ''
fancyprint ${color1} ' ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗'
fancyprint ${color1} ' ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║'
fancyprint ${color1} ' ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║'
fancyprint ${color1} ' ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝'
fancyprint ${color2} ' https://github.com/tgifelix/dotfiles'
echo ''
# }}}
fancyprint ${color2} ' >> Nuking: $HOME/dotfiles $HOME/.zsh $HOME/.aliases $HOME/.debian $HOME/.macos $HOME/.zshrc <<'
rm -rf $HOME/dotfiles $HOME/.zsh $HOME/.aliases $HOME/.debian $HOME/.macos $HOME/.zshrc
fancyprint ${color2} 'Reinstall with: git clone https://github.com/tgifelix/dotfiles "$HOME/dotfiles" && bash $HOME/dotfiles/scripts/bootstrap.sh'