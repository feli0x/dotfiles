#!/bin/bash/

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
# echo ' >> adding new user (password required)'
# sudo adduser w

# echo ' >> adding sudo rights'
# sudo usermod -aG sudo w

# echo ' >> switching to user:w (password required)'
# su - w

# echo ' >> editing /etc/sudoers (password required)'
# sudo echo -e 'w ALL=(ALL) NOPASSWD' >> /etc/sudoers

echo ' >> updating apt'
sudo apt update
sudo apt upgrade -y

#scripts
echo ' >> installing scripts'
sudo apt install git curl tmux vim npm neofetch htop -y

#ohmybash
echo ' >> installing Oh-My-Bash'
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

#vim plugins
echo ' >> installing vim plugins'
mkdir -p .vim/autoload .vim/bundle
curl -LSso .vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/dracula/vim.git .vim/bundle/dracula
git clone https://github.com/vim-airline/vim-airline .vim/bundle/vim-airline
git clone https://github.com/mattn/emmet-vim .vim/bundle/emmet-vim 
git clone https://github.com/ryanoasis/vim-devicons .vim/bundle/vim-devicons
git clone https://github.com/pangloss/vim-javascript.git .vim/bundle/vim-javascript
git clone https://github.com/mhinz/vim-startify ./vim/bundle/vim-startify

echo ' >> editing .vimrc'
echo -e "execute pathogen#infect()" >> .vimrc
echo -e "colorscheme dracula" >> .vimrc
echo -e "syntax on" >> .vimrc
echo -e "filetype plugin indent on" >> .vimrc
echo -e "let g:startify_custom_header = [" >> .vimrc
echo -e "\ '    ██╗   ██╗██╗███╗   ███╗██╗     ██╗███████╗███████╗'," >> .vimrc
echo -e "\ '    ██║   ██║██║████╗ ████║██║     ██║██╔════╝██╔════╝'," >> .vimrc
echo -e "\ '    ██║   ██║██║██╔████╔██║██║     ██║█████╗  █████╗  '," >> .vimrc
echo -e "\ '    ╚██╗ ██╔╝██║██║╚██╔╝██║██║     ██║██╔══╝  ██╔══╝  '," >> .vimrc
echo -e "\ '     ╚████╔╝ ██║██║ ╚═╝ ██║███████╗██║██║     ███████╗'," >> .vimrc
echo -e "\ '      ╚═══╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝╚═╝     ╚══════╝'," >> .vimrc
echo -e "\ '                                            @_tgifelix'," >> .vimrc
echo -e "\ ]" >> .vimrc

#bash alias
sudo echo -e "alias config='vim ~/.bashrc'" >> .bashrc
sudo echo -e "alias ohmybash='vim ~/.oh-my-bash'" >> .bashrc
sudo echo -e "alias vimconfig='vim ~/.vimrc'" >> .bashrc
sudo echo -e "alias t='tmux'" >> .bashrc
sudo echo -e "alias tls='tmux ls'" >> .bashrc
sudo echo -e "alias t0='tmux attach -t 0'" >> .bashrc
sudo echo -e "alias t1='tmux attach -t 1'" >> .bashrc
sudo echo -e "alias t2='tmux attach -t 2'" >> .bashrc
sudo echo -e "alias nmaptop10='nmap --top-ports 10'" >> .bashrc
sudo echo -e "alias nmaptop20='nmap --top-ports 20'" >> .bashrc
sudo echo -e "alias nmapos='sudo nmap -A -T4'" >> .bashrc
sudo echo -e "alias nmapvuln='nmap -Pn --script vuln'"  >> .bashrc
sudo echo -e "alias nmapfb='nmap --script ftp-brute -p 21'" >> .bashrc
sudo echo -e "alias vncipad='vncserver -geometry 2388x1668'" >> .bashrc
sudo echo -e "alias vncmb='vncserver -geometry 2800x1600'" >> .bashrc
sudo echo -e "alias vnckill1='vncserver -kill :1'" >> .bashrc
sudo echo -e "alias vnckill2='vncserver -kill :2'" >> .bashrc
sudo echo -e "alias motd='more /etc/motd'" >> .bashrc
sudo echo -e "alias vb='vim .bashrc'" >> .bashrc
sudo echo -e "alias ftn='cat .ftn && sleep 3  && sudo airmon-ng start wlan1 && kismet -c wlan1mon'" >> .bashrc
sudo echo -e "alias w1up='sudo airmon-ng start wlan1'" >> .bashrc
sudo echo -e "alias w1down='sudo airmon-ng stop wlan1mon'" >> .bashrc
sudo echo -e "alias kw1='kismet -c wlan1mon'" >> .bashrc
sudo echo -e "alias pifi='sudo service hostapd start && sudo reboot'" >> .bashrc
sudo echo -e "alias wifi='sudo service hostapd stop && sudo reboot'" >> .bashrc
sudo echo -e "alias htn='sudo wifite --clients-only --dict passlist.txt'" >> .bashrc
sudo echo -e "alias x='exit'" >> .bashrc

# echo ' >> changing motd'
# sudo mv /etc/motd /etc/motd.bk
# sudo touch /etc/motd
# sudo echo -e '\n' >> /etc/motd
# sudo echo -e '██╗    ██╗ █████╗ ██████╗    ██████╗ ██╗' >> /etc/motd
# sudo echo -e '██║    ██║██╔══██╗██╔══██╗   ██╔══██╗██║' >> /etc/motd
# sudo echo -e '██║ █╗ ██║███████║██████╔╝   ██████╔╝██║' >> /etc/motd
# sudo echo -e '██║███╗██║██╔══██║██╔══██╗   ██╔═══╝ ██║' >> /etc/motd
# sudo echo -e '╚███╔███╔╝██║  ██║██║  ██║██╗██║     ██║' >> /etc/motd
# sudo echo -e ' ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝' >> /etc/motd
# sudo echo -e '                      v1.0 by @vim__life' >> /etc/motd
# sudo echo -e '\n' >> /etc/motd


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