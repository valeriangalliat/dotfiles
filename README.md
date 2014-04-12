Dotfiles
========

My home directory skeleton with main configuration files.

Description
-----------

This repository contains my configuration files for GNU/Linux or BSD environment.

Some files are stored as symbolic link and this repository needs to be cloned
into a compliant filesystem for the links to work.

Installation
------------

A makefile is provided to retrieve needed dependencies and to install the
configuration files into the target directory (home directory by default).

### Retrieve all dependencies

```sh
make deps-all
```

### Retrieve specific dependencies

Special targets are created for each subdirectory of the `deps` directory.

```sh
make deps-shell deps-vim
```

### Install in home directory

```sh
make install
```

### Install in custom directory

```sh
make install DESTDIR=/path/to/destdir
```

The `link` directory has its own makefile to build `link.mk` dynamically. This
file contains all the targets to link in destination directory. For each
subdirectory of `link`, if a `map` file is present, it will be used as the list
of files to link, else the whole directory content will be linked.

The `link/zsh/.zshrc` file is also made with its own makefile, to concatenate
all the files from `.zshrc.d` in right order.
