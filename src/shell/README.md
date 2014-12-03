Shell
=====

`dircolors`
-----------

The `LSCOLORS` (for BSD) and `LS_COLOS` (for GNU) are generated in a
`dircolors` file, sourced by the shell profile.

Run `make dircolors` to generate them (the main makefile will do this
for you during installation but you can still do it manually).

`graceful`
----------

Depending on the environment, I won't have the same set of softwares
installed, but even if I don't have all my favorite softwares, I still
want my environment to fallback gracefully.

This file is generated with `make graceful`. See the makefile for actual
environment variables and their possible values. The `gd` script is used
to select the first available command from its arguments.

If you want to regenerate this file, remove it and run `make graceful`
again.
