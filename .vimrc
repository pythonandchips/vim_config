filetype off

"initialise pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin indent on
syntax on

set nocompatible

let mapleader = ","
let maplocalleader = ","

let g:ackprg="ack-grep -H --nocolor --nogroup  --column"
set grepprg=/usr/bin/ack
set autowrite
set ruler
set nu
set nowrap
set timeoutlen=250
set history=256
set mousehide
set mouse=a
set ts=2
set bs=2
set shiftwidth=2
set autoindent
set smarttab
set expandtab
set guioptions-=m
set guioptions-=T
set guioptions-=r
set showmatch
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set shell=/bin/sh
set splitright
map <Leader>e :e. <CR>
map <Leader>E :E  <CR>
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <Up> :cprev <CR>
map <Down> :cnext <CR>
"custom mappings
map <silent> <LocalLeader>w <ESC>:w<CR>
nnoremap <Leader>r G=gg<C-o><C-o>
nnoremap <Leader>P "+p<CR>
nnoremap <Leader>Y "+y<CR>
nnoremap <Leader>YY "+yy<CR>
map <silent> <LocalLeader>rb :RunAllRubyTests<CR>
map <silent> <LocalLeader>rc :RunRubyFocusedContext<CR>
map <silent> <LocalLeader>rt :RunRubyFocusedUnitTest<CR>
"diff options
:set diffopt+=iwhite
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd BufWritePost,FileWritePost * silent call AutoTag ()
"set colour scheme
colorscheme vividchalk
