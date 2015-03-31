set nocompatible
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Set up plugins here
Plugin 'Lokaltog/vim-easymotion'

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
