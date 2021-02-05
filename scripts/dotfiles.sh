#!/bin/sh

timestamp() {
  date +"%d-%m-%Y @ %T"
}

cp $HOME/.zshrc $HOME/dotfiles/zsh/.zshrc
cp $HOME/.bashrc $HOME/dotfiles/bash/.bashrc
cp $HOME/.vimrc $HOME/dotfiles/vim/.vimrc
cp $HOME/.aliases $HOME/dotfiles/aliases/.aliases

if [[ `git status --porcelain` ]]; then
	git pull origin master
	git add .
	git commit -m "Update: $(timestamp)"
	git push origin master
fi

curl -m 10 --retry 5 https://hc-ping.com/20043bc8-3f05-4b66-90a4-6faa4c855e95
