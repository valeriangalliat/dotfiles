export PYTHON = python
export DESTDIR ?= $(HOME)

all:

install: install-cli \
	install-gtk \
	install-i3 \
	install-mpd \
	install-qt \
	install-sublime-text \
	install-urxvt \
	install-vimperator \
	install-x11

install-cli: \
	install-shell \
	install-tmux \
	install-vim \
	install-weechat \
	install-zsh

install-shell:
	tools/deploy src/shell

install-tmux:
	tools/deploy src/tmux

install-vim:
	tools/deploy src/vim

install-weechat:
	tools/deploy src/weechat

install-zsh:
	tools/deploy src/zsh

install-gtk:
	tools/deploy src/gtk

install-i3:
	tools/deploy src/i3

install-mpd:
	tools/deploy src/mpd

install-qt:
	tools/deploy src/qt

install-sublime-text:
	tools/deploy src/sublime-text

install-urxvt:
	tools/deploy src/urxvt

install-vimperator:
	tools/deploy src/vimperator

install-x11:
	tools/deploy src/x11
