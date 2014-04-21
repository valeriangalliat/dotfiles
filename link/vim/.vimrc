" Init pathogen.vim
execute pathogen#infect()

" Theme

set t_Co=256
colorscheme wombat256mod
syntax on " Syntax highlighting

" Color columns like cursor line
highlight ColorColumn term=underline ctermbg=236 guibg=#32322f

" Global

set nocompatible " Not compatible with Vi
set backspace=indent,eol,start " More powerful backspace
set ruler " Show cursor position
set number " Display numbers
set cursorline " Highlight cursor line
set colorcolumn=80 " Show 80 chars limit
set wildmenu " Enhanced command mode (display matches on tab)
set encoding=utf-8 " UTF-8 support
set nowrap " No word wrap

" Change leader key
let mapleader=','

"
" Complete until longest match. On tab, list matches. If tab is pressed
" again, do full completion.
"
set wildmode=longest,list,full

" Indentation

set autoindent " Automatic indentation (keep previous line offset)
set smartindent " Improved automatic indentation
set tabstop=4 " Tab width
set expandtab " Use spaces instead of tabs
set softtabstop=4 " Remove 4 spaces with backspace
set shiftwidth=4 " Indentation command width
set shiftround " Indentation is always a multiple of configured width

" Filetypes

filetype on
filetype indent on " Load indentation rules regarding of filetype
filetype plugin on " Filetype specific config

" X11 integration

set clipboard=unnamed " X11 clipboard
set mouse=a " Enable mouse

" Search

set ignorecase " Case insensitive
set infercase " Sensitive completion
set smartcase " Sensitive search if upper characters
set incsearch " Highlight pattern while typed

"
" Highlight search matches after search command, and automatically disable
" it after idle time.
"
autocmd cursorhold * set nohlsearch
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?

" Whitespaces

set listchars=tab:——,trail:•,nbsp:•
set list " Show whitespaces
autocmd BufWritePre * :%s/\s\+$//e " Trim trailing whitespaces on save

" Misc

set virtualedit=block " No bounds when in visual block
set spelllang=en " Spell check language
