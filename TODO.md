Vim `set ft=markdown` on `.md` files.

The deploy script will fail if it needs to create a directory where a link
already exists.

Add i3blocks to dependencies.

Create directory `~/.config/i3blocks/scripts` and link i3blocks scripts.

Add custom `volume_fix` script.

Precompile dependencies to avoid installing YAML extension.

Deps clean target to remove directories not configured.

Refactor `link` and `copy` functions with an option for directories, to
allow to link file with same name in directory like default behavior.

Maybe change directory to category directory to allow glob in link, like
`link User/*.sublime-settings .config/sublime-text-3/Packages/User` for
Sublime Text.
