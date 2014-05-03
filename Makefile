PYTHON = python
DESTDIR ?= $(HOME)

all:

include deps/deps.mk
include link/link.mk

install: $(INSTALL_TARGETS)

$(DIRS):
	mkdir $@
