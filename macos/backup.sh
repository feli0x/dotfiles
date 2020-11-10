#!/bin/sh

timestamp() {
  date +"%d-%m-%Y @ %T"
}


# copy dotfiles
cp ~/.zshrc ~/dotfiles/macos/.zshrc
cp ~/.vimrc ~/dotfiles/macos/.vimrc

# push
if [[ `git status --porcelain` ]]; then
	git pull origin master
	git add .
	git commit -m "Update: $(timestamp)"
	git push origin master
fi

curl -m 10 --retry 5 https://hc-ping.com/20043bc8-3f05-4b66-90a4-6faa4c855e95
