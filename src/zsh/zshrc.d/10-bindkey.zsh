# Multiple undo/redo in vi command mode
bindkey -a u undo
bindkey -a '^R' redo

# Undo/redo in vi insert mode
bindkey -v '^Z' undo
bindkey -v '^R' redo

#
# Standard bindings
# =================
#
# More standard behavior even in vi mode.
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
# Needed twice because the `terminfo` variable don't work on all
# setups.
#

bindkey "${terminfo[kcuu1]}" history-beginning-search-backward # Up
bindkey "${terminfo[kcud1]}" history-beginning-search-forward # Down

bindkey "^[[A" history-beginning-search-backward # Up
bindkey "^[[B" history-beginning-search-forward # Down

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
