PLUGINS = $(shell grep runtimepath vimrc | grep -v '"' | grep -o 'plugins/.*')

all: $(PLUGINS)

update:
	for p in plugins/*; do git -C "$p" pull; done

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

# Autocompletion
plugins/vim-mucomplete:
	git clone https://github.com/lifepillar/vim-mucomplete.git $@

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

# Don't yank when cutting by default
plugins/vim-cutlass:
	git clone https://github.com/svermeulen/vim-cutlass $@

# Comment stuff out
plugins/vim-commentary:
	git clone https://github.com/tpope/vim-commentary.git $@

plugins/switch.vim:
	git clone https://github.com/AndrewRadev/switch.vim $@

# }}}

# Syntax {{{
# ==========

# Needed by `vim-markdown`
plugins/tabular:
	git clone https://github.com/godlygeek/tabular.git $@

plugins/vim-markdown:
	git clone https://github.com/plasticboy/vim-markdown.git $@

# }}}
