" Enabling filetype support provides filetype-specific indenting, syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

set nocompatible " Disable backwards compatibility
set modelines=0

" Set tab width to 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Convert tabs to spaces
set expandtab

" Be smart when using tabs
set smarttab

" Set encoding to utf-8
set encoding=utf-8

set scrolloff=3

" `matchit.vim` is built-in so let's enable it!
" Hit `%` on `if` to jump to `else`.
"runtime macros/matchit.vim

" Indenting Features
set autoindent                 " Automatic indenting
set si                         " Smart indent

" Turn on text wrapping
"set wrap


set showmode
set showcmd

set hidden                     " Possibility to have more than one unsaved buffers.
set wildmenu                   " Great command-line completion, use `<Tab>` to move
set wildmode=list:longest

set visualbell

set ttyfast
set ruler                      " Shows the current line number at the bottom-right of the screen around and `<CR>` to validate.

set backspace=indent,eol,start " Proper backspace behavior.
set laststatus=2
set number
"set relativenumber

set incsearch                  " Incremental search, hit `<CR>` to stop.

" Ignore case when searching
set ignorecase

"When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
"set showmatch
"set linebreak
"set nolist
set spell spelllang=en_ca
"set colorcolumn=80
set background=light


