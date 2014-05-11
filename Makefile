export PYTHON = python
export DESTDIR ?= $(HOME)

all:

install: \
	install-gtk \
	install-i3 \
	install-qt \
	install-shell \
	install-sublime-text \
	install-tmux \
	install-urxvt \
	install-vim \
	install-vimperator \
	install-weechat \
	install-x11 \
	install-zsh

install-cli: \
	install-shell \
	install-tmux \
	install-vim \
	install-weechat \
	install-zsh

install-gtk:
	tools/deploy src/gtk

install-i3:
	tools/deploy src/i3

install-qt:
	tools/deploy src/qt

install-shell:
	tools/deploy src/shell

install-sublime-text:
	tools/deploy src/sublime-text

install-tmux:
	tools/deploy src/tmux

install-urxvt:
	tools/deploy src/urxvt

install-vim:
	tools/deploy src/vim

install-vimperator:
	tools/deploy src/vimperator

install-weechat:
	tools/deploy src/weechat

install-x11:
	tools/deploy src/x11

install-zsh:
	tools/deploy src/zsh
