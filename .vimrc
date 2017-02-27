set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set autoindent
set hlsearch
set enc=utf-8
set nocompatible
set textwidth=120
set t_Co=256
syntax on
set number

set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" F10 save file
nmap <F10> :w<CR>

" in insert mode F10 will exit insert, save, enters insert again
imap <F10> <ESC>:w<CR>i



