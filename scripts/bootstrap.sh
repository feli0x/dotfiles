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
clear
echo ''
fancyprint ${color1} ' ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗'
fancyprint ${color1} ' ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║'
fancyprint ${color1} ' ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║'
fancyprint ${color1} ' ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝'
fancyprint ${color2} ' https://www.tgifelix.com/dotfiles'
echo ''
fancyprint ${color2} ' >> Cloning Plugins <<'
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
fancyprint ${color1} ' ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗'
fancyprint ${color1} ' ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║'
fancyprint ${color1} ' ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║'
fancyprint ${color1} ' ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝'
fancyprint ${color2} ' https://www.tgifelix.com/dotfiles'
echo ''
fancyprint ${color2} ' >> Copying DotFiles <<'
echo ''
cp -v $HOME/dotfiles/.aliases $HOME/.aliases
sleep 1
cp -v $HOME/dotfiles/.zshrc $HOME/.zshrc
sleep 1
clear
# }}}
echo ''
fancyprint ${color1} ' ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗'
fancyprint ${color1} ' ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║'
fancyprint ${color1} ' ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║'
fancyprint ${color1} ' ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝'
fancyprint ${color2} ' https://www.tgifelix.com/dotfiles'
echo ''
fancyprint ${color2} ' >> DONE! <<'
sleep 1
clear
# }}}
echo ''
fancyprint ${color1} ' ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗'
fancyprint ${color1} ' ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗'
fancyprint ${color1} ' ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║'
fancyprint ${color1} ' ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║'
fancyprint ${color1} ' ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝'
fancyprint ${color2} ' https://www.tgifelix.com/dotfiles'
echo ''
fancyprint ${color2} ' >> Reloading ZShell... <<'
sleep 2
zsh