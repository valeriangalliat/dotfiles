INSTALL_TARGETS += link-zsh
link-zsh: $(DESTDIR)/.dircolors $(DESTDIR)/.zshrc

$(DESTDIR)/.dircolors: link/zsh/.dircolors
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

$(DESTDIR)/.zshrc: link/zsh/.zshrc
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

INSTALL_TARGETS += link-x11
link-x11: $(DESTDIR)/.Xresources $(DESTDIR)/.xsession

$(DESTDIR)/.Xresources: link/x11/.Xresources
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

$(DESTDIR)/.xsession: link/x11/.xsession
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

INSTALL_TARGETS += link-vim
link-vim: $(DESTDIR)/.vimrc $(DESTDIR)/.vim

$(DESTDIR)/.vimrc: link/vim/.vimrc
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

$(DESTDIR)/.vim: link/vim/.vim
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

INSTALL_TARGETS += link-gtk
link-gtk: $(DESTDIR)/.gtkrc-2.0

$(DESTDIR)/.gtkrc-2.0: link/gtk/.gtkrc-2.0
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

INSTALL_TARGETS += link-sublime-text
link-sublime-text: $(DESTDIR)/.config/sublime-text-3

$(DESTDIR)/.config/sublime-text-3: link/sublime-text/.config/sublime-text-3
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

INSTALL_TARGETS += link-weechat
link-weechat: $(DESTDIR)/.weechat

$(DESTDIR)/.weechat: link/weechat/.weechat
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

INSTALL_TARGETS += link-i3
link-i3: $(DESTDIR)/.i3status.conf $(DESTDIR)/.i3

$(DESTDIR)/.i3status.conf: link/i3/.i3status.conf
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

$(DESTDIR)/.i3: link/i3/.i3
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

INSTALL_TARGETS += link-qt
link-qt: $(DESTDIR)/.config/Trolltech.conf

$(DESTDIR)/.config/Trolltech.conf: link/qt/.config/Trolltech.conf
	mkdir -p $$(dirname $@)
	ln -fs $$(python -c "import os; print(os.path.relpath('$(PWD)', '$$(dirname $@)'))")/$< $@

