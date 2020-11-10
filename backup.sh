#!/bin/sh

# copy dotfiles
cp ~/.zshrc ~/dotfiles/macos/.zshrc
cp ~/.vimrc ~/dotfiles/macos/.vimrc

# push
if [[ `git status --porcelain` ]]; then
	git pull origin master
	git add .
	git commit -m "automatic update: $(timestamp)"
	git push origin master
fi
