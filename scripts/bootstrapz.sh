#!/bin/zsh
git clone https://github.com/geometry-zsh/geometry $HOME/.zsh/geometry
git clone https://github.com/marlonrichert/zsh-autocomplete.git $HOME/.zsh/zsh-autocomplete
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting

cp $HOME/dotfiles/.zshrc $HOME/.zshrc
cp $HOME/dotfiles/.aliases $HOME/.aliases