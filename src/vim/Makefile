plugins.vim: plugins
	sed -f plugins.sed $< \
		| tr '\n' ',' \
		| sed 's/^/call vam#Scripts([/;s/,$$/], {})/' \
		> $@
