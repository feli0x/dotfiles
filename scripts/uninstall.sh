#!/bin/sh
color_off='\033[0m'
color1='\033[0;35m'
color2='\033[1;36m'
# }}}
fancyprint () {
    printf '%b\n' "$1$2$color_off" >&2
}
# }}}
echo ''
fancyprint ${color1} ' ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗'
fancyprint ${color1} ' ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║'
fancyprint ${color1} ' ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║'
fancyprint ${color1} ' ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝'
fancyprint ${color2} ' https://github.com/feli0x/dotfiles'
echo ''
# }}}
fancyprint ${color2} ' >> Nuking DotFiles <<'
rm -rf $HOME/dotfiles $HOME/.zsh $HOME/.aliases $HOME/.zshrc
fancyprint ${color2} 'Reinstall with: git clone https://github.com/feli0x/dotfiles "$HOME/dotfiles" && bash $HOME/dotfiles/scripts/install.sh'
sleep 7
zsh