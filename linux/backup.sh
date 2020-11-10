#!/bin/sh

timestamp() {
  date +"%d-%m-%Y @ %T"
}


# copy dotfiles
cp ~/.bashrc ~/dotfiles/linux/.bashrc
cp ~/.bash_aliases ~/dotfiles/linux/.bash_aliases
cp ~/.vimrc ~/dotfiles/linux/.vimrc

# push
if [[ `git status --porcelain` ]]; then
	git pull origin master
	git add .
	git commit -m "Update: $(timestamp)"
	git push origin master
fi

curl -m 10 --retry 5 https://hc-ping.com/466d55fd-1aaa-46b3-a0b8-a6659cf4c279
