#
# ~/.zshrc
#
# See zshbuiltins(1) for zsh commands documentation.
# See zshoptions(1) for options documentation.
#

setopt appendhistory # Do not overwrite history on new session
setopt histignoredups # Ignore duplicate lines
setopt histignorespace # Ignore lines beginning with a space
setopt histnostore # Do not store history command in history

setopt autocd # Change directory when typing only directory name
setopt nomatch # Error when file pattern has no matches
setopt completealiases # Enable completion for aliases
setopt correct # Try to correct mispelled command names

#
# Enable zsh advanced completion (`z` option to autoload with zsh style).
# I don't know what the `U` option does but everybody uses it with `autoload`.
#
autoload -Uz compinit
compinit

#
# Enable advanced prompt. I don't know what it does but well, if
# they say it's "advanced"... maybe it's better?
#
autoload -Uz promptinit
promptinit

#
# Enable advanced move command.
#
autoload -Uz zmv
