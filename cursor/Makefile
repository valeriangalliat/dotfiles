install:
	echo "Cursor doesn't support installing extensions from the CLI, need to install manually"
	# xargs -I{} cursor --install-extension {} --force < extensions

.PHONY: extensions
extensions:
	cursor --list-extensions > $@
