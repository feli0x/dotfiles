#!/bin/sh
color_off='\033[0m'
color1='\033[0;35m'
color2='\033[1;36m'
dir=$PWD
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
cd $HOME/dotfiles
# }}}
git pull
cp .aliases $HOME/.aliases
cp .functions $HOME/.functions
cp .zshrc $HOME/.zshrc
# }}}
cd $dir
echo ''
fancyprint ${color2} ' >> Update complete! 🤙'
exit 0