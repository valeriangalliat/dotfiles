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

The `dotfiles-deploy` is required to interpret the `dotfiles` file.

Some configuration files are retrieved from other git repositories and
a recursive clone is required for them to work.
