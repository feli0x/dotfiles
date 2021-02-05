#!/bin/sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap homebrew/cask-versions
brew install node npm neofetch onefetch gatsby-cli sass yarn tree nmap rtv serve htop
brew cask install iterm2 visual-studio-code macvim spotify slack google-chrome brave-browser firefox-developer-edition browserosaurus vlc github raspberry-pi-imager kap 

