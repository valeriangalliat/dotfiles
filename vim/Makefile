PLUGINS = $(shell grep runtimepath vimrc | grep -v '"' | grep -o 'plugins/.*')

all: $(PLUGINS)

# Essentials {{{
# ==============

# Defaults everyone can agree on
plugins/vim-sensible:
	git clone https://github.com/tpope/vim-sensible.git $@

# Color scheme
plugins/base16-vim:
	git clone https://github.com/chriskempson/base16-vim.git $@

# Fancy status line
plugins/vim-airline:
	git clone https://github.com/vim-airline/vim-airline.git $@

plugins/vim-airline-themes:
	git clone https://github.com/vim-airline/vim-airline-themes.git $@

# }}}

# Autocompletion {{{
# ==================

# Autocompletion (native with popup)
plugins/AutoComplPop:
	git clone https://github.com/vim-scripts/AutoComplPop.git $@

# Autocompletion (intermediate)
plugins/neocomplcache.vim:
	git clone https://github.com/Shougo/neocomplcache.vim.git $@

# Autocompletion
plugins/vim-mucomplete:
	git clone https://github.com/lifepillar/vim-mucomplete.git $@

# Autocompletion (LSP support)
plugins/coc.nvim:
	git clone https://github.com/neoclide/coc.nvim.git $@

# }}}

# Motions/objects {{{
# ===================

# Repeat with `.` for plugins
plugins/vim-repeat:
	git clone https://github.com/tpope/vim-repeat.git $@

# New text objects
plugins/targets.vim:
	git clone https://github.com/wellle/targets.vim.git $@

# Exchange operator
plugins/vim-exchange:
	git clone https://github.com/tommcdo/vim-exchange.git $@

# Change surroundings
plugins/vim-surround:
	git clone https://github.com/tpope/vim-surround.git $@

# Camel case and underscore motions
plugins/CamelCaseMotion:
	git clone https://github.com/bkad/CamelCaseMotion.git $@

# }}}

# Auto {{{
# ========

# Auto close blocks
plugins/vim-endwise:
	git clone https://github.com/tpope/vim-endwise.git $@

# Auto close brackets
plugins/vim-closer:
	git clone https://github.com/rstacruz/vim-closer.git $@

# Auto detect indent
plugins/vim-sleuth:
	git clone https://github.com/tpope/vim-sleuth $@

# }}}

# Helpers {{{
# ===========

# Proper buffer closing
plugins/vim-bbye:
	git clone https://github.com/moll/vim-bbye.git $@

# File explorer (better than netrw)
plugins/vim-filebeagle:
	git clone https://github.com/jeetsukumaran/vim-filebeagle.git  $@

# Don't yank when cutting by default
plugins/vim-cutlass:
	git clone https://github.com/svermeulen/vim-cutlass $@

# Comment stuff out
plugins/vim-commentary:
	git clone https://github.com/tpope/vim-commentary.git $@

# fzf integration
plugins/fzf:
	git clone https://github.com/junegunn/fzf $@

# fzf extras
plugins/fzf.vim:
	git clone https://github.com/junegunn/fzf.vim $@

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

plugins/i3config.vim:
	git clone https://github.com/mboughaba/i3config.vim $@

plugins/vim-nix:
	git clone https://github.com/LnL7/vim-nix.git $@

plugins/vim-python-pep8-indent:
	git clone https://github.com/Vimjas/vim-python-pep8-indent.git $@

plugins/vim-elixir:
	git clone https://github.com/elixir-editors/vim-elixir $@

# Needed for SQL autocompletion
plugins/dbext.vim:
	git clone --config fetch.fsckobjects=false https://github.com/vim-scripts/dbext.vim $@

# }}}
