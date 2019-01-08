.PHONY: i3
i3:
	mkdir -p ~/.config/i3
	ln -si $(PWD)/i3/config ~/.config/i3/config

.PHONY: i3blocks
i3blocks:
	mkdir -p ~/.config/i3blocks
	ln -si $(PWD)/i3blocks/config ~/.config/i3blocks/config

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
	curl https://raw.githubusercontent.com/dotphiles/dotzsh/master/themes/dotphiles/dircolors/dircolors.base16.dark \
		| sed 's/05/00/g' \
		| dircolors - > $@

.PHONY: vim
vim:
	make -C vim
	mkdir -p ~/.vim/undo ~/.vim/swap
	ln -si $(PWD)/vim/vimrc ~/.vimrc

.PHONY: tmux
tmux:
	cp -i $(PWD)/tmux/tmux.conf.home ~/.tmux.conf

.PHONY: git
git:
	ln -si $(PWD)/git/gitconfig ~/.gitconfig

.PHONY: net
net:
	ln -si $(PWD)/net/curlrc ~/.curlrc
	ln -si $(PWD)/net/wgetrc ~/.wgetrc

.PHONY: psql
psql:
	ln -si $(PWD)/psql/psqlrc ~/.psqlrc


.PHONY: x11
x11: x11/block
	cp -i $(PWD)/x11/xinitrc.home ~/.xinitrc
	ln -si $(PWD)/x11/Xresources ~/.Xresources

x11/block:
	git clone https://github.com/valeriangalliat/block.git $@

.PHONY: compton
compton:
	cp -i /etc/xdg/compton.conf ~/.config/compton.conf
	cat compton/compton.conf >> ~/.config/compton.conf
