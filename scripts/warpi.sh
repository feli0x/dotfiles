#!/bin/sh

Color_off='\033[0m'
Color1='\033[0;35m'
Color2='\033[1;36m'

tools='zsh git npm curl tmux neovim mosh exa golang neofetch htop nmap wifite kismet wireshark'

fancyprint () {
    printf '%b\n' "$1$2$Color_off" >&2
}

warPi () {
    fancyprint ${Color1} '██╗    ██╗ █████╗ ██████╗    ██████╗ ██╗'
    fancyprint ${Color1} '██║    ██║██╔══██╗██╔══██╗   ██╔══██╗██║'
    fancyprint ${Color1} '██║ █╗ ██║███████║██████╔╝   ██████╔╝██║'
    fancyprint ${Color1} '██║███╗██║██╔══██║██╔══██╗   ██╔═══╝ ██║'
    fancyprint ${Color1} '╚███╔███╔╝██║  ██║██║  ██║██╗██║     ██║'
    fancyprint ${Color1} ' ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝'
}

echo ''
warPi
fancyprint ${Color2} '                      v1.3 by @_tgifelix'
echo ''
sleep 2

# update
echo ''
fancyprint ${Color2} ' >> updating apt'
sudo apt update

# install
echo ''
fancyprint ${Color2} ' >> installing tools'
sudo apt install ${tools} -y

# complete
clear
echo ''
warPi
echo ''
fancyprint ${Color2} ' >> Done! 🤘'
fancyprint ${Color1} ' >> Installed: ${tools}'
echo ''
exit 0

########## UPDATE COMING SOON ##########
