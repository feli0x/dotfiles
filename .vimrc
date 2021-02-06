"""""""""""""""""""" 
" work in progress "
""""""""""""""""""""
set nocompatible

filetype off  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'evanleck/vim-svelte'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'codechips/coc-svelte', {'do': 'npm install'}
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'

call vundle#end()

filetype plugin indent on

colorscheme dracula

set number
set noerrorbells
set smarttab
set ai 
set si
set wrap

syntax enable

set rtp+=/usr/local/opt/fzf

map <C-c> :q<CR>
map <space>e :CocCommand explorer<CR>

let g:startify_custom_header = [
\ '',
\ '  ██╗   ██╗██╗███╗   ███╗██╗     ██╗███████╗███████╗',
\ '  ██║   ██║██║████╗ ████║██║     ██║██╔════╝██╔════╝',
\ '  ██║   ██║██║██╔████╔██║██║     ██║█████╗  █████╗  ',
\ '  ╚██╗ ██╔╝██║██║╚██╔╝██║██║     ██║██╔══╝  ██╔══╝  ',
\ '   ╚████╔╝ ██║██║ ╚═╝ ██║███████╗██║██║     ███████╗',
\ '    ╚═══╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝╚═╝     ╚══════╝',
\ '             https://www.tgifelix.com/dotfiles/vimrc',
\ '',
\ ]

