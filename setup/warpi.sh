#!/bin/bash
Color_off='\033[0m'
Color='\033[1;35m'
# }}}
fancyprint () {
    printf '%b\n' "$1$2$Color_off" >&2
}
# }}}
cd
echo ##
fancyprint '██╗    ██╗ █████╗ ██████╗    ██████╗ ██╗'
fancyprint '██║    ██║██╔══██╗██╔══██╗   ██╔══██╗██║'
fancyprint '██║ █╗ ██║███████║██████╔╝   ██████╔╝██║'
fancyprint '██║███╗██║██╔══██║██╔══██╗   ██╔═══╝ ██║'
fancyprint '╚███╔███╔╝██║  ██║██║  ██║██╗██║     ██║'
fancyprint ' ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝'
fancyprint '                      v1.2 by @_tgifelix'
echo ##
echo ##
echo ' >> updating apt'
sudo apt update
sudo apt upgrade -y

# apt
echo ' >> installing scripts'
sudo apt install git curl tmux vim npm mosh golang neofetch htop nmap wifite kismet -y

# ohmybash
echo ' >> installing Oh-My-Bash'
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# dotfiles
curl -LSso ${HOME}/.bashrc https://raw.githubusercontent.com/TGIFelix/dotfiles/master/linux/.bashrc
curl -LSso ${HOME}/.bash_aliases https://raw.githubusercontent.com/TGIFelix/dotfiles/master/linux/.bash_aliases
curl -LSso ${HOME}/.htp https://raw.githubusercontent.com/TGIFelix/dotfiles/master/linux/.htp
curl -LSso ${HOME}/.ftn https://raw.githubusercontent.com/TGIFelix/dotfiles/master/linux/.ftn
git clone https://github.com/TGIFelix/dotfiles.git 

#reboot
fancyprint '██   ██  █████  ██████  ██████  ██    ██ '
fancyprint '██   ██ ██   ██ ██   ██ ██   ██  ██  ██  '
fancyprint '███████ ███████ ██████  ██████    ████   ' 
fancyprint '██   ██ ██   ██ ██      ██         ██    ' 
fancyprint '██   ██ ██   ██ ██      ██         ██    '
echo ##
fancyprint '██   ██  █████   ██████ ██   ██ ██ ███    ██  ██████  '
fancyprint '██   ██ ██   ██ ██      ██  ██  ██ ████   ██ ██       '
fancyprint '███████ ███████ ██      █████   ██ ██ ██  ██ ██   ███ '
fancyprint '██   ██ ██   ██ ██      ██  ██  ██ ██  ██ ██ ██    ██ '
fancyprint '██   ██ ██   ██  ██████ ██   ██ ██ ██   ████  ██████  '
echo ##
echo ' >> rebooting in 5, 4, 3, 2, 1... (press ctrl+c to stop)'
sleep 7
sudo reboot
