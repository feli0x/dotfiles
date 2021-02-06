#!/bin/sh
Color_off='\033[0m'
Color1='\033[0;35m'
Color2='\033[1;36m'
dir='$PWD'
# }}}
fancyprint () {
    printf '%b\n' "$1$2$Color_off" >&2
}
# }}}
clear
echo ''
fancyprint ${Color1} ' ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗'
fancyprint ${Color1} ' ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝'
fancyprint ${Color1} ' ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗'
fancyprint ${Color1} ' ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║'
fancyprint ${Color1} ' ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║'
fancyprint ${Color1} ' ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝'
fancyprint ${Color2} ' https://github.com/tgifelix/dotfiles'
echo ''
timestamp() {
  date +"%d-%m-%Y @ %T"
}

cp $HOME/.zshrc $HOME/dotfiles/.zshrc
cp $HOME/.bashrc $HOME/dotfiles/.bashrc
cp $HOME/.vimrc $HOME/dotfiles/.vimrc
cp $HOME/.aliases $HOME/dotfiles/.aliases

cd $HOME/dotfiles

if [[ `git status --porcelain` ]]; then
	git pull origin master
	git add .
	git commit -m "Update: $(timestamp)"
	git push origin master
fi

cd ${dir}
curl -m 10 --retry 5 https://hc-ping.com/20043bc8-3f05-4b66-90a4-6faa4c855e95