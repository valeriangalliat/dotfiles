The deploy script will fail if it needs to create a directory where a link
already exists.

In dependencies script, do not run update if install was already run before.

Keep track of linked/copied files, to be able to remove dead links. For
example, if the deploy links a file `foo` in the home directory, and then
this file is removed from the repo and `install.sh` file, the deploy script
has to figure it out and remove automatically the dead link. If the file
was copied, we can't remove it directly, but display a prompt to the user,
whether to delete or no the old file that has been removed from dotfiles.

Refactor `link` and `copy` functions with an option for directories, to
allow to link file with same name in directory like default behavior.

Maybe change directory to category directory to allow glob in link, like
`link User/*.sublime-settings .config/sublime-text-3/Packages/User` for
Sublime Text.
