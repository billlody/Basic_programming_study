set tabstop=4
set expandtab
set showmatch
set shiftwidth=4
set nocompatible
set backspace=indent,eol,start
set nu
set autoindent
set smartindent
set incsearch
set nobackup
set nowritebackup
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set termencoding=utf-8
set ruler
set smarttab
set tw=80

filetype plugin indent on
autocmd FileType *.mk,Makefile setlocal noexpandtab

syntax on
:sy enable
if has("autocmd")
    autocmd BufRead * set tw=80
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif
