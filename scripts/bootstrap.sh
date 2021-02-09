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
fancyprint ${color2} ' https://github.com/tgifelix/dotfiles'
echo ''
# }}}
fancyprint ${color2} ' >> Cloning Plugins <<'
git clone https://github.com/geometry-zsh/geometry $HOME/.zsh/geometry
git clone https://github.com/marlonrichert/zsh-autocomplete.git $HOME/.zsh/zsh-autocomplete
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting
git clone https://github.com/sindresorhus/pure.git $HOME/.zsh/pure
# }}}
clear
# }}}
echo ''
fancyprint ${color2} ' >> Copying DotFiles <<'
cp $HOME/dotfiles/.aliases $HOME/.aliases
cp $HOME/dotfiles/.debian $HOME/.debian
cp $HOME/dotfiles/.macos $HOME/.macos
cp $HOME/dotfiles/.zshrc $HOME/.zshrc
# }}}
clear
# }}}
fancyprint ${color2} ' >> Done! Reloading ZShell... <<'
sleep 3
zsh