set nocompatible
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Set up plugins here
Plugin 'Lokaltog/vim-easymotion'
Plugin 'junegunn/seoul256.vim'

call vundle#end()
filetype plugin indent on


" Custom settings for EasyMotion
let g:EasyMotion_leader_key = '<leader>'

" More convinient way to use system clipboard
if has('clipboard')
    if has('unnamedplus') " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
    else " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
endif

" Line numbering
set nu
set relativenumber


" Look & Feel
colorscheme seoul256
set guifont=Inconsolata-g\ for\ Powerline\ Medium\ 12
set linespace=2
set colorcolumn=80
highlight ColorColumn guibg=Gray14
set cursorline
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
syntax on
