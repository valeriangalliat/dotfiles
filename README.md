# 💡 Dotfiles

> My home directory skeleton with main configuration files.

## Description

This repository contains my configuration files for GNU/Linux or BSD
environment.

Some files are stored as symbolic link and this repository needs to be
cloned into a compliant filesystem for the links to work.

## Installation

A makefile will help to deploy the configuration files.

```sh
make i3
make i3blocks
make zsh
make vim
make tmux
make git
make net
make psql
make x11
make x11-pam-hack
make picom
make xfce4-terminal
```

I also made an alias for macOS that just installs `zsh`, `vim`, and
`git`.

```sh
make mac
```
