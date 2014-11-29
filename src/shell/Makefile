CURL = curl

BSD_COLORS_URL = https://raw.githubusercontent.com/dotphiles/dotzsh/master/modules/theme/init.zsh
GNU_COLORS_URL = https://raw.githubusercontent.com/dotphiles/dotzsh/master/themes/dotphiles/dircolors/dircolors.base16.dark

BSD_COLORS_PATCH = grep LSCOLORS | grep -v '\$$' | sed 's/^ *//'
GNU_COLORS_PATCH = sed '/^TERM rxvt-unicode$$/a TERM rxvt-unicode-256color'

all: dircolors graceful

dircolors: force
	$(CURL) -s $(BSD_COLORS_URL) | $(BSD_COLORS_PATCH) > $@
	$(CURL) -s $(GNU_COLORS_URL) | $(GNU_COLORS_PATCH) | dircolors - >> $@

graceful: force
	./gd EDITOR vim vi > $@
	./gd BROWSER firefox w3m elinks links lynx >> $@
	./gd PAGER less more >> $@
	./gd MDEDIA_PLAYER mpv mplayer vlc ffplay >> $@
	./gd IMAGE_VIEWER meh feh >> $@

force:
