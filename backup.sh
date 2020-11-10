#!/bin/sh

timestamp() {
  date +"%d-%m-%Y"
}


# copy dotfiles
cp ~/.zshrc ~/dotfiles/macos/.zshrc
cp ~/.vimrc ~/dotfiles/macos/.vimrc

# push
if [[ `git status --porcelain` ]]; then
	git pull origin master
	git add .
	git commit -m "update: $(timestamp)"
	git push origin master
fi
