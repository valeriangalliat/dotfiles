# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command
shopt -s checkwinsize

# Enable color
alias ls="ls --color=auto"
alias grep="grep --color=auto"

# Useful aliases
alias ll="ls -l"
alias l="ls -lA"
