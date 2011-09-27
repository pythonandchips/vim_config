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
set guioptions-=l
set guioptions-=b
set showmatch
set shell=/bin/sh
set splitright
set backupdir=/home/cgemmell/.vim_backup
set noerrorbells
set novisualbell
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
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
vnoremap <Leader>Y "+y<CR>
nnoremap <Leader>YY "+yy<CR>
vnoremap <silent>[ ^
vnoremap <silent>] $
nnoremap <silent>[ ^
nnoremap <silent>] $
nnoremap <F5> :GundoToggle<CR>
nnoremap <Leader>o o<ESC>
nnoremap <Leader>O O<ESC>
inoremap ` <ESC>

map <silent> <LocalLeader>rb :RunAllRubyTests<CR>
map <silent> <LocalLeader>rc :RunRubyFocusedContext<CR>
map <silent> <LocalLeader>rt :RunRubyFocusedUnitTest<CR>
"diff options
:set diffopt+=iwhite

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd BufWritePost,FileWritePost * silent call AutoTag ()
"set colour scheme
colorscheme vividchalk
