OMZ=../../../deps/zsh/oh-my-zsh
PLUGINS=$(OMZ)/plugins

ALL = colored-man

all: $(ALL)

clean:
	rm -rf $(ALL)

colored-man: $(PLUGINS)/colored-man
	cp -r $< $@
	../../../bin/sedi 's/1;44;33m/1;43;30m/' $@/colored-man.plugin.zsh
