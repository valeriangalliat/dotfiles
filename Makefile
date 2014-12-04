DESTDIR = $(HOME)

# Destination
D = $(DESTDIR)

# Target destination
C = $(D)/.config/$@

# Target source directory
S = src/$@

CP = @tools/cp
LN = @tools/ln
MKDIR = @mkdir -p

all: cli graph

# CLI {{{
# =======

cli: \
	git \
	irssi \
	shell \
	tmux \
	vim \
	weechat \
	zsh

git:
	$(LN) $(S)/gitconfig $(D)/.gitconfig

irssi:
	$(MKDIR) $(D)/.irssi
	$(CP) $(S)/config $(D)/.irssi
	$(CP) $(S)/default.theme $(D)/.irssi

shell:
	$(MAKE) -C $(S)
	$(CP) $(S)/profile.home $(D)/.profile

tmux:
	$(CP) $(S)/tmux.conf.home $(D)/.tmux.conf

vim:
	$(LN) $(S)/vimrc $(D)/.vimrc

weechat:
	$(MKDIR) $(D)/.weechat
	$(CP) $(S)/weechat.conf $(D)/.weechat
	$(CP) $(S)/irc.conf $(D)/.weechat

zsh:
	$(MAKE) -C $(S)/plugins
	$(LN) $(S)/zshrc.home $(D)/.zshrc
	$(LN) $(D)/.profile $(D)/.zprofile

# }}}

# Graphical {{{
# =============

graph: \
	dunst \
	gtk \
	i3 \
	i3blocks \
	mpd \
	ncmpcpp \
	qt \
	sublime-text \
	urxvt \
	vimperator \
	x11 \
	zathura

dunst:
	$(MKDIR) $(C)
	$(LN) $(S)/dunstrc $(C)

gtk:
	$(LN) $(S)/gtkrc-2.0 $(D)/.gtkrc-2.0

i3:
	$(MKDIR) $(C)
	$(CP) $(S)/config $(C)

i3blocks:
	$(MKDIR) $(C)/scripts
	$(CP) $(S)/config $(C)
	$(LN) $(S)/scripts/* $(C)/scripts

mpd:
	$(MKDIR) $(C)
	$(LN) $(S)/mpd.conf $(C)

ncmpcpp:
	$(MKDIR) $(D)/.ncmpcpp
	$(LN) $(S)/config $(D)/.ncmpcpp

qt:
	$(CP) $(S)/Trolltech.conf $(D)/.config

sublime-text:
	$(MKDIR) $(C)-3/Packages/User
	$(LN) $(S)/Packages/* $(C)-3/Packages
	$(LN) $(S)/*.sublime-settings $(C)-3/Packages/User

urxvt:
	$(MKDIR) $(D)/.urxvt/ext
	$(LN) $(S)/ext/* $(D)/.urxvt/ext

vimperator:
	$(CP) $(S)/vimperatorrc.home $(D)/.vimperatorrc

x11:
	$(CP) $(S)/session.home $(D)/.xsession
	$(LN) $(D)/.xsession $(D)/.xinitrc

zathura:
	$(MKDIR) $(C)
	$(LN) $(S)/zathurarc $(C)

# }}}
