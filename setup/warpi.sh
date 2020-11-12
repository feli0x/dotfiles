#!/bin/bash/
cd
echo ##
echo -e '██╗    ██╗ █████╗ ██████╗    ██████╗ ██╗'
echo -e '██║    ██║██╔══██╗██╔══██╗   ██╔══██╗██║'
echo -e '██║ █╗ ██║███████║██████╔╝   ██████╔╝██║'
echo -e '██║███╗██║██╔══██║██╔══██╗   ██╔═══╝ ██║'
echo -e '╚███╔███╔╝██║  ██║██║  ██║██╗██║     ██║'
echo -e ' ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝'
echo -e '                      v1.0 by @_tgifelix'
echo ##
echo ##
echo ' >> updating apt'
sudo apt update
sudo apt upgrade -y

# apt
echo ' >> installing scripts'
sudo apt install git curl tmux vim npm mosh neofetch htop nmap wifite kismet -y

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
echo -e '██   ██  █████  ██████  ██████  ██    ██ '
echo -e '██   ██ ██   ██ ██   ██ ██   ██  ██  ██  '
echo -e '███████ ███████ ██████  ██████    ████   ' 
echo -e '██   ██ ██   ██ ██      ██         ██    ' 
echo -e '██   ██ ██   ██ ██      ██         ██    '
echo ##
echo -e '██   ██  █████   ██████ ██   ██ ██ ███    ██  ██████  '
echo -e '██   ██ ██   ██ ██      ██  ██  ██ ████   ██ ██       '
echo -e '███████ ███████ ██      █████   ██ ██ ██  ██ ██   ███ '
echo -e '██   ██ ██   ██ ██      ██  ██  ██ ██  ██ ██ ██    ██ '
echo -e '██   ██ ██   ██  ██████ ██   ██ ██ ██   ████  ██████  '
echo ##
echo ' >> rebooting in 5, 4, 3, 2, 1... (press ctrl+c to stop)'
sleep 7
sudo reboot
