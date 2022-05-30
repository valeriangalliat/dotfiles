install:
	xargs -I{} code --install-extension {} --force < extensions

.PHONY: extensions
extensions:
	code --list-extensions > $@
