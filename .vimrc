set nocompatible
filetype off 


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Set up plugins here
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'junegunn/seoul256.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'ivalkeen/vim-ctrlp-tjump'
Plugin 'kchmck/vim-coffee-script'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nvie/vim-flake8'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'scrooloose/syntastic'

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


" Settings for search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase " Case insensitive search
set smartcase " Case sensitive when uc present


" Ack settings
map <C-F> :Ack 
" Use ag instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'


" NERDTree settings
map <C-K><C-B> :NERDTreeToggle<CR>


" CtrlP settings
map <C-R> :CtrlPBufTagAll<Return>
let g:ctrlp_extensions = ['tag', 'buffertag']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(env|git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc|swp)$',
  \ }
" Use ag to speed up CtrlP
" Use .agignore (with .gitignore syntax) to ignore files
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'


