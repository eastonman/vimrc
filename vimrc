autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set autoindent
set autoread
set expandtab
set smarttab
set history=500
set tabstop=4
set shiftwidth=4

filetype plugin on
filetype indent on

syntax enable

if has("autocmd")                                                          
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
endif
