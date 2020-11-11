#!/bin/bash/

## PATHOGEN
echo ' >> installing Pathogen'
mkdir -p .vim/autoload .vim/bundle
curl -LSso .vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## PLUGINS
echo ' >> cloning plugins from github'
git clone https://github.com/dracula/vim.git ~/.vim/bundle/dracula
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/scrooloose/nerdcommenter ~/.vim/bundle/nercommenter
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/mattn/emmet-vim ~/.vim/bundle/emmet-vim 
git clone https://github.com/ryanoasis/vim-devicons ~/.vim/bundle/vim-devicons
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
git clone https://github.com/mhinz/vim-startify ~/.vim/bundle/vim-startify
git clone https://github.com/tomtom/tlib_vim.git ~/.vim/bundle/tlib_vim
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git ~/.vim/bundle/vim-addon-mw-utils
git clone https://github.com/garbas/vim-snipmate.git ~/.vim/bundle/snipmate
git clone https://github.com/honza/vim-snippets.git ~/.vim/bundle/snippets
git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive
git clone https://github.com/junegunn/fzf  ~/.vim/bundle/fzf
git clone https://github.com/mg979/vim-visual-multi.git  ~/.vim/bundle/vim-visual-multi
git clone https://github.com/mxw/vim-jsx ~/.vim/bundle/vim-jsx

## VIMRC
curl -LSso  ~/.vimrc https://github.com/TGIFelix/dotfiles/blob/master/linux/.vimrc -o