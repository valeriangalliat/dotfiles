Dotfiles
========

My home directory skeleton with main configuration files.

Description
-----------

This directory structure is meant to be deployed with the `dotfiles-deploy`
script.

Some files are stored as symbolic link and this repository needs to be cloned
into a compliant filesystem for the links to work.

Dependencies
------------

- `dotfiles-utils`

Installation
------------

Some configuration files are retrieved from other git repositories and
a recursive clone is required for them to work.

```sh
git clone https://github.com/valeriangalliat/relpath.git
git clone https://github.com/valeriangalliat/dotfiles-utils.git
git clone https://github.com/valeriangalliat/dotfiles.git
PATH=$(pwd)/realpath:$(pwd)/dotfiles-utils:$PATH
cd dotfiles
dotfiles-deploy
```
