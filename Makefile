.PHONY: base
base: zsh vim git net psql tmux

.PHONY: mac
mac: base

.PHONY: linux
linux: base i3 i3blocks x11 picom xfce4-terminal feh

# Base {{{
# ========

	# Zsh {{{
	# -------

.PHONY: zsh
zsh: zsh/oh-my-zsh zsh/zsh-syntax-highlighting zsh/base16-shell zsh/dircolors
	cp -i $(PWD)/zsh/zshrc.home ~/.zshrc
	cp -i $(PWD)/zsh/zshenv.home ~/.zshenv
	ln -si .zshenv ~/.zlogin

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
	make -C vim

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

.PHONY: tmux
tmux:
	cp -i $(PWD)/tmux/tmux.conf.home ~/.tmux.conf

# }}}

# Linux {{{
# =========

.PHONY: i3
i3:
	mkdir -p ~/.config/i3
	ln -si $(PWD)/i3/config ~/.config/i3/config

.PHONY: i3blocks
i3blocks: i3blocks/i3blocks i3blocks/i3blocks-contrib
	mkdir -p ~/.config/i3blocks
	ln -si $(PWD)/i3blocks/config ~/.config/i3blocks/config

i3blocks/i3blocks:
	git clone https://github.com/vivien/i3blocks.git $@
	cd $@ && ./autogen.sh && ./configure && make

i3blocks/i3blocks-contrib:
	git clone https://github.com/vivien/i3blocks-contrib.git $@

.PHONY: x11
x11: x11/block
	cp -i $(PWD)/x11/xinitrc.home ~/.xinitrc
	ln -si $(PWD)/x11/xprofile ~/.xprofile
	ln -si $(PWD)/x11/Xresources ~/.Xresources
	mkdir -p ~/.config/fontconfig
	ln -si $(PWD)/x11/fonts.conf ~/.config/fontconfig/fonts.conf

x11/block:
	git clone https://github.com/valeriangalliat/block.git $@

# See <https://github.com/systemd/systemd/issues/14053#issuecomment-571363297>
.PHONY: x11-pam-hack
x11-pam-hack:
	cp -i $(PWD)/x11/pam_environment ~/.pam_environment

.PHONY: picom
picom:
	cp -i /etc/xdg/picom.conf ~/.config/picom.conf
	cat picom/picom.conf >> ~/.config/picom.conf

.PHONY: xfce4-terminal
xfce4-terminal:
	mkdir -p ~/.config/xfce4/terminal
	ln -si $(PWD)/xfce4-terminal/terminalrc ~/.config/xfce4/terminal/terminalrc

.PHONY: feh
feh:
	mkdir -p ~/.config/feh
	ln -si $(PWD)/feh/themes ~/.config/feh/themes

# }}}
