Dotfiles
========

> My home directory skeleton with main configuration files.

Description
-----------

This repository contains my configuration files for GNU/Linux or BSD
environment.

Some files are stored as symbolic link and this repository needs to be
cloned into a compliant filesystem for the links to work.

Dependencies
------------

The dependencies are usually plugins for different softwares, shell
scripts, or other kind of programs, that are stored in the `deps` folder
and used in the `bin`, `man` and `src` folders as symbolic links.

The `deps/make` script is provided to manage the dependencies.

Dependencies are grouped by categories (see `deps/deps.sh` for the
complete list), and you can install a subset of categories.

```sh
deps/make # Install (or update) all dependencies
deps/make shell zsh # Restrict to `shell` and `zsh` categories

INSTALL=false deps/make # Don't install new dependencies (update only)
UPDATE=false deps/make # Don't update existing dependencies (install only)
```

Installation
------------

A makefile will help to deploy the configuration files in the target
directory (user home by default).

```sh
make install # Install everything
make install DESTDIR=/path/to/destdir # Install everything in given path
make shell zsh # Install only `shell` and `zsh` configuration
make cli # Install everything related to CLI
```
