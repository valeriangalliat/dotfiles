install:
	xargs -I{} code --install-extension {} --force < extensions

.PHONY: extensions
extensions:
	code --list-extensions > $@

cursor-install:
	echo "Cursor doesn't support installing extensions from the CLI, need to install manually"

cursor-extensions:
	cursor --list-extensions > $@
