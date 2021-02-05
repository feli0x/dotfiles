set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'evanleck/vim-svelte'
Plugin 'dracula/vim', { 'name': 'dracula' }

call vundle#end()
filetype plugin indent on

colorscheme dracula

set number

syntax enable

map <C-n> :NERDTreeToggle<CR>
map <C-c> :q<CR>
