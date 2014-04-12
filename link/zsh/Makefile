TARGET = .zshrc

#
# Find (including file links) all file from `.zshrc.d` directory,
# and sort results to get them in required order by the prefix
# numbers.
#
SOURCES != find -L $(TARGET).d -type f | sort

all: $(TARGET)

clean:
	$(RM) $(TARGET)

$(TARGET): $(SOURCES)
	@#
	@# Concatenate all sources in target file.
	@#
	@# If `$^` don't work with anything other than GNU make,
	@# try to replace it with `$(SOURCES)` (but it's way less elegant).
	@#
	@# For output file style, a newline should be added between
	@# each file instead of sticking them together, but this
	@# is not done here. In all cases the file don't have to be edited
	@# directly, the partial files in `.zshrc.d` should be used.
	@#
	cat $^ > $@
