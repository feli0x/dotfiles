#!/bin/sh

timestamp() {
  date +"%d-%m-%Y @ %T"
}


# copy dotfiles
cp ~/.bashrc ~/dotfiles/linux/.bashrc
cp ~/.vimrc ~/dotfiles/linux/.vimrc

# push
if [[ `git status --porcelain` ]]; then
	git pull origin master
	git add .
	git commit -m "Update: $(timestamp)"
	git push origin master
fi
