GNU_COLORS_URL = https://raw.githubusercontent.com/dotphiles/dotzsh/master/themes/dotphiles/dircolors/dircolors.base16.dark

all: dircolors

clean:
	rm dircolors

dircolors:
	curl -s $(COLORS_URL) | dircolors - > $@
