all: dmenumoji rofi-bluetooth

dmenumoji:
	git clone https://github.com/valeriangalliat/dmenumoji.git
	make -C $< dmenu
	patch -d $</dmenu < custom.patch
	make -C $<

rofi-bluetooth:
	git clone https://github.com/nickclyde/rofi-bluetooth.git
	sed -i 's/^rofi_command=.*/rofi_command="dmenu -i -p"/' $@/rofi-bluetooth
