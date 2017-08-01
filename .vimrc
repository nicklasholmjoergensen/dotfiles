" Author: Nicklas Holm Jørgensen
" Last change: 2017 August 1

execute pathogen#infect()

" Use Vim settings
set nocompatible

" Make backspace behave in a sane manner
set backspace=indent,eol,start

" Filetypes
filetype on
filetype plugin on
filetype indent on

set autoread

" Visual
syntax on
colorscheme Tomorrow-Night
set guifont=Menlo\ Regular:h18
set lines=35 columns=150
set colorcolumn=90
set number
set showmatch
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Allow hidden buffers
set hidden
set noswapfile
set nobackup

set history=100
set laststatus=2
set noshowmode

" Reload Vim config
map <leader>s :source ~/.vimrc<CR>

" Remove whitespace on save
autocmd BufWritePre * :%s/\s+$//e

" Start NERDTree on Vim startup
autocmd vimenter * NERDTree

" NERDTree config
let NERDTreeShowHidden=1

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
