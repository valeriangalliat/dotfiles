all: dmenumoji rofi-bluetooth

dmenumoji:
	git clone https://github.com/valeriangalliat/dmenumoji.git

rofi-bluetooth:
	git clone https://github.com/nickclyde/rofi-bluetooth.git
	sed -i 's/^rofi_command=.*/rofi_command="bemenu -i -p"/' $@/rofi-bluetooth
