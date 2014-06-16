setopt appendhistory # Do not overwrite history on new session
setopt histignoredups # Ignore duplicate lines
setopt histnostore # Do not store history command in history
setopt incappendhistory # Do not wait exit to append history

setopt autocd # Change directory when typing only directory name
setopt nomatch # Error when file pattern has no matches
setopt completealiases # Enable completion for aliases
setopt correct # Try to correct mispelled command names
setopt extendedglob # Use advanced globbing patterns
setopt printexitvalue # Print exit value if non-zero
setopt interactivecomments # Support comments in interactive mode

#
# Enable zsh advanced completion (`-z` option to autoload with zsh style).
# I don't know what the `-U` option does but everybody uses it with
# `autoload`.
#
autoload -Uz compinit
compinit -d ~/.cache/zsh/completion

#
# Enable advanced prompt. I don't know what it does but well, if
# they say it's "advanced"... maybe it's better?
#
autoload -Uz promptinit
promptinit

#
# Enable colors variables (see `colors` in zshall(1)).
#
# This will in particular provide the `$fg` and `$bg` array variables.
#
autoload -Uz colors
colors

#
# Enable advanced move command.
#
autoload -Uz zmv
