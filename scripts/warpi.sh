#!/bin/bash

########## UPDATE COMING SOON ##########

#!/bin/bash
Color_off='\033[0m'
Color1='\033[0;35m'
Color2='\033[1;36m'

fancyprint () {
    printf '%b\n' "$1$2$Color_off" >&2
}

echo ''
fancyprint ${Color1} '██╗    ██╗ █████╗ ██████╗    ██████╗ ██╗'
fancyprint ${Color1} '██║    ██║██╔══██╗██╔══██╗   ██╔══██╗██║'
fancyprint ${Color1} '██║ █╗ ██║███████║██████╔╝   ██████╔╝██║'
fancyprint ${Color1} '██║███╗██║██╔══██║██╔══██╗   ██╔═══╝ ██║'
fancyprint ${Color1} '╚███╔███╔╝██║  ██║██║  ██║██╗██║     ██║'
fancyprint ${Color1} ' ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝'
fancyprint ${Color2} '                      v1.3 by @_tgifelix'
echo ''
echo ''

# update
echo ''
fancyprint ${Color2} ' >> updating apt'
sudo apt update

# install
echo ''
fancyprint ${Color2} ' >> installing tools'
sudo apt install git curl tmux vim npm mosh golang neofetch htop nmap wifite kismet -y

# complete
echo ''
echo ''
fancyprint ${Color1} '██╗  ██╗ █████╗  ██████╗██╗  ██╗████████╗██╗  ██╗███████╗'
fancyprint ${Color1} '██║  ██║██╔══██╗██╔════╝██║ ██╔╝╚══██╔══╝██║  ██║██╔════╝'
fancyprint ${Color1} '███████║███████║██║     █████╔╝    ██║   ███████║█████╗  '
fancyprint ${Color1} '██╔══██║██╔══██║██║     ██╔═██╗    ██║   ██╔══██║██╔══╝  '
fancyprint ${Color1} '██║  ██║██║  ██║╚██████╗██║  ██╗   ██║   ██║  ██║███████╗'
fancyprint ${Color1} '╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝'
fancyprint ${Color1} '   ██████╗ ██╗      █████╗ ███╗   ██╗███████╗████████╗   '
fancyprint ${Color1} '   ██╔══██╗██║     ██╔══██╗████╗  ██║██╔════╝╚══██╔══╝   '
fancyprint ${Color1} '   ██████╔╝██║     ███████║██╔██╗ ██║█████╗     ██║      '
fancyprint ${Color1} '   ██╔═══╝ ██║     ██╔══██║██║╚██╗██║██╔══╝     ██║      '
fancyprint ${Color1} '   ██║     ███████╗██║  ██║██║ ╚████║███████╗   ██║      '
fancyprint ${Color1} '   ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝      '
echo ''
echo ''
exit 0
