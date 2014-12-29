all: vendor bindings.zsh

vendor:
	mkdir $@
	gem install --no-user-install -i $@ curses

#
# Bindings from <https://github.com/junegunn/fzf/blob/ee433ef6e9b8ab2860ca93dd39ed110fc79bf60e/install#L179-L232>.
#
bindings.zsh:
	curl -s 'https://raw.githubusercontent.com/junegunn/fzf/ee433ef6e9b8ab2860ca93dd39ed110fc79bf60e/install' \
		| sed -n '179,232p' > $@
