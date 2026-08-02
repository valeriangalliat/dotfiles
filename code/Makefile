install:
	xargs -I{} code --install-extension {} --force < extensions

cursor-install:
	xargs -I{} cursor --install-extension {} --force < extensions

antigravity-install:
	xargs -I{} antigravity --install-extension {} --force < extensions

.PHONY: extensions
extensions:
	code --list-extensions

cursor-extensions:
	cursor --list-extensions

antigravity-extensions:
	antigravity --list-extensions
