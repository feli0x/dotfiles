#!/bin/sh
color_off='\033[0m'
color1='\033[0;35m'
color2='\033[1;36m'
dir=$PWD
# }}}
fancyPrint () {
    printf '%b\n' "$1$2$color_off" >&2
}
# }}}
dotFiles () {
    fancyPrint ${color1} ' ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗'
    fancyPrint ${color1} ' ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝'
    fancyPrint ${color1} ' ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗'
    fancyPrint ${color1} ' ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║'
    fancyPrint ${color1} ' ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║'
    fancyPrint ${color1} ' ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝'
    fancyPrint ${color2} ' https://www.tgifelix.com/dotfiles'
}
clear
echo ''
dotFiles
echo ''
fancyPrint ${color2} ' >> Cloning Plugins'
echo ''
git clone https://github.com/geometry-zsh/geometry $HOME/.zsh/geometry
git clone https://github.com/reobin/typewritten.git $HOME/.zsh/typewritten
git clone https://github.com/marlonrichert/zsh-autocomplete.git $HOME/.zsh/zsh-autocomplete
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting
# }}}
clear
# }}}
echo ''
dotFiles
echo ''
fancyPrint ${color2} ' >> Copying DotFiles'
echo ''
cp -v $HOME/dotfiles/.aliases $HOME/.aliases
sleep 1
cp -v $HOME/dotfiles/.zshrc $HOME/.zshrc
sleep 1
fancyPrint ${color2} ' >> DONE!'
sleep 2
clear
# }}}
echo ''
dotFiles
echo ''
fancyPrint ${color2} ' >> hAcK tHe PLaNeT !'
zsh