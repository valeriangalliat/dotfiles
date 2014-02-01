# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# Set prompt with title
PS1="\[\e]0;\w\a\]\$(ret=\$?; [ \$ret != 0 ] && echo \$ret\ )\$ "

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command
shopt -s checkwinsize

alias ls="ls -Fh --color=auto --group-directories-first"
alias l="ls -l"
alias la="l -A"

alias grep="grep --color=auto"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
