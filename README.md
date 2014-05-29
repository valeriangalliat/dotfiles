Dotfiles
========

My home directory skeleton with main configuration files.

Description
-----------

This repository contains my configuration files for GNU/Linux or BSD
environment.

Some files are stored as symbolic link and this repository needs to be cloned
into a compliant filesystem for the links to work.

Dependencies
------------

The dependencies are usually plugins for different softwares, shell
scripts, or other kind of programs, that are stored in the `deps` folder
and used in the `src` folder as symbolic links.

A script is provided in the `deps` folder to reteireve needed dependencies.

The dependencies are grouped by categories (see `deps/deps.yaml` for the
complete list), and you can install a subset of categories.

```sh
deps/make install # Install all dependencies
deps/make install zsh vim # Install only zsh and Vim dependencies

deps/make update # Update installed dependencies
deps/make update zsh vim # Update only installed zsh and Vim dependencies
```

Installation
------------

A makefile will help to deploy the configuration files in the target
directory (user home by default).

```sh
make install # Install everything
make install DESTDIR=/path/to/destdir # Install everything in given path
make install-zsh install-vim # Install only zsh and Vim configuration
```

I also defined an helper target `install-cli` that will install the
configuration file of all the cli tools I use.

Process
-------

The technical process to deploy the files is the following:

The makefile will call the `tools/deploy` script, by passing it the
directory of the category to install (e.g., `src/vim`).

This script will define some utility functions, and will then source
the `install.sh` file in the dependency directory (`src/vim/install.sh`).

The `install.sh` file then has the responsibility to copy or link the
configuration files in the target directory, using the previously defined
utility functions.

* `alink`, like `acopy`, is not meant to be called directly. It is a wrapper
  for `ln`, but will make the link target relative, even if given absolute
  file paths. If a file or a directory of the same name already exists,
  it will prompt to overwrite.
* `link` takes two paths, the first relative to the category directory
  (e.g., `vimrc`, relative to `src/vim`), and the second relative to the
  target directory. It will just resolve the absolute paths and call `alink`.
* `hlink` is the same as `link` but both parameters are relative to the
  target directory.
* `acopy`, `copy` and `hlink` are the same as their `link` equivalents, but
  they will copy the file instead of creating a link.

### Home

Some configuration files are suffixed by `.home`, like
`src/shell/profile.gen.home`, `src/zsh/zshenv.home`. These files are
meant to be copied by the `install.sh` script, so they can be easily
modified for a local configuration. They usually source a similar
file in "$DOTFILES" directory.

For example, `src/zsh/zshenv.home` is copied in `~/.zshenv`, and will
source `src/zsh/zshenv` file.

### Profile

The shell profile has a little particularity. It allows to resolve some
variables at first run, and then cache the results. The first time the
shell profile is loaded, it will load the `profile.gen` file, and parse all
the `GRACEFUL_` variables. For example, you can define the folowing variable:

```sh
GRACEFUL_EDITOR='vim vi'
```

If `vim` is available, the `EDITOR` environment variable will be exported
(and cached) with this value, otherwise with `vi`. You can provide
any number of fallback commands like this (see `src/shell/profile.gen`).

A `cache` function is also available in the `profile.gen` file. It is
defined in `src/shell/bin/profile-gen`, and will cache an environment
variable.

For example, `cache FOO $((1 + 1))` will store `2` as the value of `FOO`
environment variable in the cache (so this isn't computed every time).
In this case it is not really needed, but for more greedy operations, it
will make the shell load faster.

Any time you need to refresh a variable you cached (for example if you
installed `vim` and your current cached `EDITOR` is `vi`), you can
call `profile-gen` to regenerate the cache.

The cache file is stored in `~/.cache/shell/profile`, and this file is
sourced by `src/shell/profile`.
