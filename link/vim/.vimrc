" Init pathogen.vim
execute pathogen#infect()

syntax on " Syntax highlighting

" Color scheme
set t_Co=256
colorscheme wombat256mod

" Global
set nocompatible " Not compatible with Vi
set number " Display numbers
set wildmenu " Enhanced command mode (display matches on tab)
set cursorline " Highlight cursor line

" Indentation
set autoindent " Automatic indentation (keep previous line offset)
set tabstop=4 " Tab width
set expandtab " Use spaces instead of tabs
set softtabstop=4 " Remove 4 spaces with backspace
set shiftwidth=4 " Indentation command width

" Filetypes
filetype on
filetype indent on " Load indentation rules regarding of filetype

"
" Enable filetype plugins, allowing to load specific config files
" regarding of current filetype.
"
filetype plugin on

" X11 integration

"
" Use X11 clipboard if Vim was compiled with `xterm_clipboard`.
"
set clipboard=unnamed

"
" Use mouse in Vim if compiled with `mouse_xterm`.
"
set mouse=a " Enable mouse support (all modes)

" Search
set ignorecase " Case insensitive matching
set smartcase " Case sensisitive if pattern containe upper case characters
set incsearch " Highlight pattern while typed
