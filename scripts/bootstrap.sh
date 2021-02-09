#!/bin/sh
clear

echo ' >> Cloning Plugins <<'
git clone https://github.com/geometry-zsh/geometry $HOME/.zsh/geometry
git clone https://github.com/marlonrichert/zsh-autocomplete.git $HOME/.zsh/zsh-autocomplete
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting
git clone https://github.com/sindresorhus/pure.git $HOME/.zsh/pure

clear

echo ' >> Copying DotFiles <<'
cp $HOME/dotfiles/.aliases $HOME/.aliases
cp $HOME/dotfiles/.debian $HOME/.debian
cp $HOME/dotfiles/.macos $HOME/.macos
cp $HOME/dotfiles/.zshrc $HOME/.zshrc

clear

echo 'Done!'

exit 0