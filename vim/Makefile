all: \
	plugins/vim-sensible \
	plugins/vim-airline \
	plugins/vim-airline-themes \
	plugins/vim-bbye \
	plugins/neocomplcache.vim \
	plugins/base16-vim \
	plugins/vim-repeat \
	plugins/targets.vim \
	plugins/vim-exchange \
	plugins/vim-surround \
	plugins/CamelCaseMotion \
	plugins/vim-javascript \
	plugins/typescript-vim \
	plugins/tabular \
	plugins/vim-markdown \
	plugins/html5.vim \
	plugins/vim-json \
	plugins/rust.vim \
	plugins/vim-pug \
	plugins/vim-nix \
	plugins/vim-python-pep8-indent \
	plugins/vim-endwise \
	plugins/auto-pairs \
	plugins/vim-easyclip \
	plugins/vim-commentary

# Essentials {{{
# ==============

# Defaults everyone can agree on
plugins/vim-sensible:
	git clone https://github.com/tpope/vim-sensible.git $@

# Fancy status line
plugins/vim-airline:
	git clone https://github.com/vim-airline/vim-airline.git $@

plugins/vim-airline-themes:
	git clone https://github.com/vim-airline/vim-airline-themes.git $@

# Proper buffer closing
plugins/vim-bbye:
	git clone https://github.com/moll/vim-bbye.git $@

# }}}

# Finder, fuzzy, menu {{{
# =======================

# Fuzzy finder
plugins/fzf:
	git clone https://github.com/junegunn/fzf.git $@

# Find anything
plugins/unite.vim:
	git clone https://github.com/Shougo/unite.vim.git $@

# Fuzzy finder (faster than Unite equivalent)
plugins/ctrlp.vim:
	git clone https://github.com/kien/ctrlp.vim.git $@

# Fuzzy finder (needs Ruby)
plugins/command-t:
	git clone https://github.com/wincent/command-t.git $@

# }}}

# Autocompletion {{{
# ==================

# Browse completion with `<Tab>`
plugins/supertab:
	git clone https://github.com/ervandew/supertab.git $@

# Autocompletion (lightweight)
plugins/AutoComplPop:
	git clone https://github.com/vim-scripts/AutoComplPop.git $@

# Autocompletion (intermediate)
plugins/neocomplcache.vim:
	git clone https://github.com/Shougo/neocomplcache.vim.git $@

# Autocompletion (same as `neocomplcache`, faster, but needs Lua)
plugins/neocomplete.vim:
	git clone https://github.com/Shougo/neocomplete.vim.git $@

# Autocompletion (heavy and powerful)
plugins/YouCompleteMe:
	git clone https://github.com/Valloric/YouCompleteMe.git $@

# }}}

# Snippets {{{
# ============

# Actual snippets
plugins/vim-snippets:
	git clone https://github.com/honza/vim-snippets.git $@

# Snippets engine
plugins/ultisnips:
	git clone https://github.com/SirVer/ultisnips.git $@

# Actual snippets (alternative)
plugins/neosnippet-snippets:
	git clone https://github.com/Shougo/neosnippet-snippets.git $@

# Snippets engine (alternative)
plugins/neosnippet.vim:
	git clone https://github.com/Shougo/neosnippet.vim.git $@

# }}}

# Theme {{{
# =========

# Color scheme
plugins/base16-vim:
	git clone https://github.com/chriskempson/base16-vim.git $@

# }}}

# Misc {{{
# ========

# Repeat with `.` for plugins
plugins/vim-repeat:
	git clone https://github.com/tpope/vim-repeat.git $@

# Multiple cursors (kinda) like Sublime Text
plugins/vim-multiple-cursors:
	git clone https://github.com/terryma/vim-multiple-cursors.git $@

# }}}

# Motions/objects {{{
# ===================

# New text objects
plugins/targets.vim:
	git clone https://github.com/wellle/targets.vim.git $@

# Switch arguments
plugins/vim-argumentative:
	git clone https://github.com/PeterRincker/vim-argumentative.git $@

# Quick motions
plugins/vim-easymotion:
	git clone https://github.com/easymotion/vim-easymotion.git $@

# Exchange operator
plugins/vim-exchange:
	git clone https://github.com/tommcdo/vim-exchange.git $@

# Change surroundings
plugins/vim-surround:
	git clone https://github.com/tpope/vim-surround.git $@

# Select by indent level
plugins/vim-dentures:
	git clone https://github.com/qstrahl/vim-dentures.git $@

# Alignment helper
plugins/vim-lion:
	git clone https://github.com/tommcdo/vim-lion.git $@

# Camel case and underscore motions
plugins/CamelCaseMotion:
	git clone https://github.com/bkad/CamelCaseMotion.git $@

# }}}

# Syntax {{{
# ==========

plugins/vim-javascript:
	git clone https://github.com/pangloss/vim-javascript.git $@

plugins/typescript-vim:
	git clone https://github.com/leafgarland/typescript-vim.git $@

# Needed by `vim-markdown`
plugins/tabular:
	git clone https://github.com/godlygeek/tabular.git $@

plugins/vim-markdown:
	git clone https://github.com/plasticboy/vim-markdown.git $@

plugins/vim-vimperator-syntax:
	git clone https://github.com/bohrshaw/vim-vimperator-syntax.git $@

plugins/vim-jade:
	git clone https://github.com/digitaltoad/vim-jade.git $@

plugins/vim-stylus:
	git clone https://github.com/wavded/vim-stylus.git $@

plugins/html5.vim:
	git clone https://github.com/othree/html5.vim.git $@

plugins/vim-json:
	git clone https://github.com/elzr/vim-json.git $@

plugins/rust.vim:
	git clone https://github.com/rust-lang/rust.vim.git $@

plugins/vim-pug:
	git clone https://github.com/digitaltoad/vim-pug.git $@

plugins/csv.vim:
	git clone https://github.com/chrisbra/csv.vim.git $@

plugins/i3-vim-syntax:
	git clone https://github.com/PotatoesMaster/i3-vim-syntax.git $@

plugins/vim-coffee-script:
	git clone https://github.com/kchmck/vim-coffee-script.git $@

plugins/vim-nix:
	git clone https://github.com/LnL7/vim-nix.git $@

plugins/vim-python-pep8-indent:
	git clone https://github.com/Vimjas/vim-python-pep8-indent.git $@

# }}}

# Auto {{{
# ========

# Auto close blocks
plugins/vim-endwise:
	git clone https://github.com/tpope/vim-endwise.git $@

# Auto close structures and quotes (awesome fork to avoid annoying mode)
plugins/auto-pairs:
	git clone https://github.com/jiangmiao/auto-pairs.git $@

# Auto toggle paste mode (disabled because super slow to load)
plugins/vim-bracketed-paste:
	git clone https://github.com/ConradIrwin/vim-bracketed-paste.git $@

# Auto change to project root
plugins/vim-rooter:
	git clone https://github.com/airblade/vim-rooter.git $@

# Auto detect indent (disabled because not accurate)
plugins/detectindent:
	git clone https://github.com/ciaranm/detectindent.git $@

# }}}

# Helpers {{{
# ===========

# Git integration
plugins/vim-fugitive:
	git clone https://github.com/tpope/vim-fugitive.git $@

# Show modified lines in Git projects
plugins/vim-gitgutter:
	git clone https://github.com/airblade/vim-gitgutter.git $@

# Clipboard helper
plugins/vim-easyclip:
	git clone https://github.com/svermeulen/vim-easyclip.git $@

# Comment stuff out
plugins/vim-commentary:
	git clone https://github.com/tpope/vim-commentary.git $@

# Narrow region to focus edit
plugins/NrrwRgn:
	git clone https://github.com/chrisbra/NrrwRgn.git $@

# Use ack with Vim
plugins/ack.vim:
	git clone https://github.com/mileszs/ack.vim.git $@

# Advanced search and replace
plugins/ctrlsf.vim:
	git clone https://github.com/dyng/ctrlsf.vim.git $@

# Advanced search and replace (change in place)
plugins/writable_search.vim:
	git clone https://github.com/AndrewRadev/writable_search.vim.git $@

# HTML shortcuts
plugins/emmet-vim:
	git clone https://github.com/mattn/emmet-vim.git $@

# `%` for HTML, LaTeX and more (native in recent Vim versions)
plugins/matchit.zip:
	git clone https://github.com/vim-scripts/matchit.zip.git $@

# Syntax checker
plugins/syntastic:
	git clone https://github.com/scrooloose/syntastic.git $@

# Switch expressions (true/false, on/off, etc.)
plugins/switch.vim:
	git clone https://github.com/AndrewRadev/switch.vim.git $@

# Manage GitHub gists
plugins/gist-vim:
	git clone https://github.com/mattn/gist-vim.git $@

# Switch between single-line and multiline statements
plugins/splitjoin.vim:
	git clone https://github.com/AndrewRadev/splitjoin.vim.git $@

# Switch between single-line and multiple statements (alternative)
plugins/vim-argwrap:
	git clone https://github.com/FooSoft/vim-argwrap.git $@

# }}}

# UI {{{
# ======

# Source explorer
plugins/SrcExpl:
	git clone https://github.com/wesleyche/SrcExpl.git $@

# Browse undo tree
plugins/undotree:
	git clone https://github.com/mbbill/undotree.git $@

# Show marks
plugins/vim-signature:
	git clone https://github.com/kshenoy/vim-signature.git $@

# Show tags from file
plugins/tagbar:
	git clone https://github.com/majutsushi/tagbar.git $@

# Context-aware relative or absolute numbers
plugins/numbers.vim:
	git clone https://github.com/myusuf3/numbers.vim.git $@

# Mark indent (disabled because slow)
plugins/indentLine:
	git clone https://github.com/Yggdroot/indentLine.git $@

# Distraction-free mode
plugins/goyo.vim:
	git clone https://github.com/junegunn/goyo.vim.git $@

# }}}
