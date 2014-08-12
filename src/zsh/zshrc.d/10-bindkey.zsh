# Multiple undo/redo in Vi command mode
bindkey -a u undo
bindkey -a '^R' redo

# Undo/redo in Vi insert mode
bindkey -v '^Z' undo
bindkey -v '^R' redo

#
# Standard bindings
# =================
#
# More standard behavior even in Vi mode.
#
# See <https://wiki.archlinux.org/index.php/Zsh#Key_Bindings>.
#
# The up/down bindings are a little special, look below for this.
#

bindkey "${terminfo[khome]}" beginning-of-line # Home
bindkey "${terminfo[kend]}" end-of-line # End
bindkey "${terminfo[kich1]}" overwrite-mode # Insert
bindkey "${terminfo[kdch1]}" delete-char # Delete
bindkey "${terminfo[kcub1]}" backward-char # Left
bindkey "${terminfo[kcuf1]}" forward-char # Right
bindkey "${terminfo[kpp]}" beginning-of-buffer-or-history # PageUp
bindkey "${terminfo[knp]}" end-of-buffer-or-history # PageDown

# Emacs backward/forward word
bindkey '\eOd' backward-word # Control+Left
bindkey '\eOc' forward-word # Control+Right

#
# Move or search
# ==============
#
# Bind up/down keys to search the command beginning in history if
# something is typed, else just move one line in history.
#
# This needs to autoload specific functions and to create user-defined
# widgets with `zle -N`.
#
# See zshzle(1).
#
# I've made custom functions to wrap the original widgets to call
# `forward-char` after the actual command, just to trigger an event
# supported by the syntax highlighting function.
#

autoload up-line-or-beginning-search
autoload down-line-or-beginning-search

up-line-or-beginning-search-color() {
    up-line-or-beginning-search
    forward-char
}

down-line-or-beginning-search-color() {
    down-line-or-beginning-search
    forward-char
}

zle -N up-line-or-beginning-search-color
zle -N down-line-or-beginning-search-color

bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search-color # Up
bindkey "${terminfo[kcud1]}" down-line-or-beginning-search-color # Down

#
# Great stuff
# ===========
#
# `^[` represnets the meta key which is probably the Alt key.
#

# Go through last words
bindkey '^[.' insert-last-word

# Show the man of command to the left (awesome)
bindkey '^[h' run-help
