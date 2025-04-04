.PHONY: base
base: zsh vim git net psql sqlite asdf

.PHONY: mac
mac: base

.PHONY: linux
linux: base vivobook sway i3blocks menu xfce4-terminal

# Base {{{
# ========

	# Zsh {{{
	# -------

.PHONY: zsh
zsh: zsh/oh-my-zsh zsh/zsh-syntax-highlighting zsh/base16-shell zsh/dircolors
	cp -i $(PWD)/zsh/zshrc.home ~/.zshrc
	cp -i $(PWD)/zsh/zshenv.home ~/.zshenv

zsh/oh-my-zsh:
	git clone https://github.com/robbyrussell/oh-my-zsh.git $@

zsh/zsh-syntax-highlighting:
	git clone https://github.com/zsh-users/zsh-syntax-highlighting $@

zsh/base16-shell:
	git clone https://github.com/chriskempson/base16-shell $@

zsh/dircolors:
	# The sed part removes blinking effect from broken symlinks
	command -v dircolors && curl https://raw.githubusercontent.com/dotphiles/dotzsh/master/themes/dotphiles/dircolors/dircolors.base16.dark \
		| sed 's/05/00/g' \
		| dircolors - > $@ || touch $@

	# }}}

.PHONY: vim
vim:
	mkdir -p ~/.vim/undo ~/.vim/swap
	ln -si $(PWD)/vim/syntax ~/.vim/syntax
	ln -si $(PWD)/vim/vimrc ~/.vimrc
	make -C $@

.PHONY: git
git:
	ln -si $(PWD)/git/gitconfig ~/.gitconfig
	ln -si $(PWD)/git/gitignore ~/.gitignore

.PHONY: net
net:
	ln -si $(PWD)/net/curlrc ~/.curlrc
	ln -si $(PWD)/net/wgetrc ~/.wgetrc

.PHONY: psql
psql:
	ln -si $(PWD)/psql/psqlrc ~/.psqlrc

.PHONY: sqlite
sqlite:
	ln -si $(PWD)/sqlite/sqliterc ~/.sqliterc

.PHONY: asdf
asdf:
	ln -si $(PWD)/asdf/tool-versions ~/.tool-versions

.PHONY: tmux
tmux:
	cp -i $(PWD)/tmux/tmux.conf.home ~/.tmux.conf

.PHONY: code
code:
	if [ -d "$(HOME)/Library/Application Support" ]; then code_dir="$(HOME)/Library/Application Support/Code/User"; else code_dir="$(HOME)/.config/Code - OSS/User"; fi && \
		mkdir -p "$$code_dir" && \
		ln -si $(PWD)/code/keybindings.json "$$code_dir/keybindings.json" && \
		ln -si $(PWD)/code/settings.json "$$code_dir/settings.json"

	make -C $@

.PHONY: cursor
cursor:
	cursor_dir="$(HOME)/Library/Application Support/Cursor/User" && \
		mkdir -p "$$cursor_dir" && \
		ln -si $(PWD)/cursor/keybindings.json "$$cursor_dir/keybindings.json" && \
		ln -si $(PWD)/cursor/settings.json "$$cursor_dir/settings.json"

	make -C $@

# }}}

# Linux {{{
# =========

.PHONY: vivobook
vivobook:
	mkdir -p ~/.config/xkb/symbols ~/.config/xkb/rules
	ln -si $(PWD)/vivobook/xkb/symbols/ctrl ~/.config/xkb/symbols/ctrl
	ln -si $(PWD)/vivobook/xkb/rules/evdev ~/.config/xkb/rules/evdev

.PHONY: i3
i3:
	mkdir -p ~/.config/i3
	ln -si $(PWD)/i3/config ~/.config/i3/config

.PHONY: sway
sway:
	mkdir -p ~/.config/sway
	ln -si $(PWD)/sway/config ~/.config/sway/config

.PHONY: i3blocks
i3blocks: i3blocks/i3blocks-contrib
	mkdir -p ~/.config/i3blocks
	ln -si $(PWD)/i3blocks/config ~/.config/i3blocks/config

i3blocks/i3blocks-contrib:
	git clone https://github.com/vivien/i3blocks-contrib.git $@

.PHONY: menu
menu:
	make -C $@

.PHONY: xfce4-terminal
	xfce4-terminal:
	mkdir -p ~/.config/xfce4/terminal
	ln -si $(PWD)/xfce4-terminal/terminalrc ~/.config/xfce4/terminal/terminalrc

# }}}
