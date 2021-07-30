all: dmenumoji

dmenumoji:
	git clone https://github.com/valeriangalliat/dmenumoji.git
	make -C $< dmenu
	patch -d $</dmenu < custom.patch
	make -C $<
