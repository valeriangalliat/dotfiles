" Init pathogen.vim
execute pathogen#infect()

syntax on " Syntax highlighting

" Color scheme
set t_Co=256
colorscheme wombat256mod

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

"
" Colors for highlighted lines.
"
" The color was the default for the cursorline but I want it to be consistent
" with column color.
"
highlight CursorLine term=underline ctermbg=236 guibg=#32322f
highlight ColorColumn term=underline ctermbg=236 guibg=#32322f

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

" Case
set ignorecase " Case insensitive
set infercase " Sensisitive completion
set smartcase " Sensisitive search if upper characters

" Search
set incsearch " Highlight pattern while typed
set hlsearch " Highlight all search matches

" Whitespaces
set listchars=tab:——,trail:•,nbsp:•
set list " Show whitespaces
autocmd BufWritePre * :%s/\s\+$//e " Trim trailing whitespaces on save

" Misc
set virtualedit=block " No bounds when in visual block
