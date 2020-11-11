#!/bin/bash/
cd
echo ##
echo -e '██╗    ██╗ █████╗ ██████╗    ██████╗ ██╗'
echo -e '██║    ██║██╔══██╗██╔══██╗   ██╔══██╗██║'
echo -e '██║ █╗ ██║███████║██████╔╝   ██████╔╝██║'
echo -e '██║███╗██║██╔══██║██╔══██╗   ██╔═══╝ ██║'
echo -e '╚███╔███╔╝██║  ██║██║  ██║██╗██║     ██║'
echo -e ' ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝'
echo -e '                      v1.0 by @vim__life'
echo ##
echo ##
echo ' >> updating apt'
sudo apt update
sudo apt upgrade -y

# apt
echo ' >> installing scripts'
sudo apt install git curl wget tmux vim npm neofetch htop -y

# ohmybash
echo ' >> installing Oh-My-Bash'
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# dotfiles
curl https://raw.githubusercontent.com/TGIFelix/dotfiles/master/linux/.bashrc -o ${HOME}/.bashrc
curl https://raw.githubusercontent.com/TGIFelix/dotfiles/master/linux/.bash_aliases -o ${HOME}/.bash_aliases

# MOTD
echo ' >> changing motd'
sudo mv /etc/motd /etc/motd.bk
sudo touch /etc/motd
sudo echo -e '\n' >> /etc/motd
sudo echo -e '██╗    ██╗ █████╗ ██████╗    ██████╗ ██╗' >> /etc/motd
sudo echo -e '██║    ██║██╔══██╗██╔══██╗   ██╔══██╗██║' >> /etc/motd
sudo echo -e '██║ █╗ ██║███████║██████╔╝   ██████╔╝██║' >> /etc/motd
sudo echo -e '██║███╗██║██╔══██║██╔══██╗   ██╔═══╝ ██║' >> /etc/motd
sudo echo -e '╚███╔███╔╝██║  ██║██║  ██║██╗██║     ██║' >> /etc/motd
sudo echo -e ' ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝' >> /etc/motd
sudo echo -e '                      v1.0 by @vim__life' >> /etc/motd
sudo echo -e '\n' >> /etc/motd


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