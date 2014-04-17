DIRS += deps
DIRS += deps/misc
DIRS += deps/shell
DIRS += deps/sublime-text
DIRS += deps/vim

deps-all: \
	deps \
	deps-misc \
	deps-shell \
	deps-sublime-text \
	deps-vim

deps-update:
	find deps \
		-mindepth 3 -maxdepth 3 \
		-type d -name .git \
		-printf "\n%h\n" \
		-exec git -C {}/.. pull \; \

deps-misc: \
	deps/misc \
	deps/misc/noelup \
	deps/misc/noelscrot \
	deps/misc/dwall \
	deps/misc/vimpager

deps-shell: \
	deps/shell \
	deps/shell/ls-colors \
	deps/shell/zsh-syntax-highlighting

deps-sublime-text: \
	deps/sublime-text \
	deps/sublime-text/package-control \
	deps/sublime-text/spacegray \
	deps/sublime-text/jsdocs \
	deps/sublime-text/asciidoc

deps-vim: \
	deps/vim \
	deps/vim/pathogen \
	deps/vim/wombat \
	deps/vim/nerdtree \
	deps/vim/autocomplpop \
	deps/vim/ctrlp \
	deps/vim/multiple-cursors

deps/misc/noelup:
	git clone https://github.com/valeriangalliat/noelup.git $@

deps/misc/noelscrot:
	git clone https://github.com/valeriangalliat/noelscrot.git $@

deps/misc/dwall:
	git clone https://github.com/valeriangalliat/dwall.git $@

deps/misc/vimpager:
	git clone https://github.com/rkitover/vimpager.git $@

deps/shell/ls-colors:
	git clone https://github.com/trapd00r/LS_COLORS.git $@

deps/shell/zsh-syntax-highlighting:
	git clone https://github.com/valeriangalliat/zsh-syntax-highlighting-filetypes.git $@

deps/sublime-text/package-control:
	git clone https://github.com/wbond/sublime_package_control.git $@

deps/sublime-text/spacegray:
	git clone https://github.com/kkga/spacegray.git $@

deps/sublime-text/jsdocs:
	git clone https://github.com/spadgos/sublime-jsdocs.git $@

deps/sublime-text/asciidoc:
	git clone https://github.com/SublimeText/AsciiDoc.git $@

deps/vim/pathogen:
	git clone https://github.com/tpope/vim-pathogen.git $@

deps/vim/wombat:
	git clone https://github.com/vim-scripts/wombat256.vim.git $@

deps/vim/nerdtree:
	git clone https://github.com/scrooloose/nerdtree.git $@

deps/vim/autocomplpop:
	git clone https://github.com/vim-scripts/AutoComplPop.git $@

deps/vim/ctrlp:
	git clone https://github.com/kien/ctrlp.vim.git $@

deps/vim/multiple-cursors:
	git clone https://github.com/terryma/vim-multiple-cursors.git $@
