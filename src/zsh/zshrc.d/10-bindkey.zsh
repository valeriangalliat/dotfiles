# Multiple undo/redo in Vi command mode
bindkey -a u undo
bindkey -a '^R' redo

# Undo/redo in Vi insert mode
bindkey -v '^Z' undo
bindkey -v '^R' redo

#
# More standard behavior even in Vi mode.
#
# See <https://wiki.archlinux.org/index.php/Zsh#Key_Bindings>.
#
# Note: I changed the up/down binding to also search the command beginning
# in history if something is already typed. If the line is empty, it will
# just move one line in history.
#
bindkey "${terminfo[khome]}" beginning-of-line # Home
bindkey "${terminfo[kend]}" end-of-line # End
bindkey "${terminfo[kich1]}" overwrite-mode # Insert
bindkey "${terminfo[kdch1]}" delete-char # Delete
bindkey "${terminfo[kcuu1]}" up-line-or-search # Up
bindkey "${terminfo[kcud1]}" down-line-or-search # Down
bindkey "${terminfo[kcub1]}" backward-char # Left
bindkey "${terminfo[kcuf1]}" forward-char # Right
bindkey "${terminfo[kpp]}" beginning-of-buffer-or-history # PageUp
bindkey "${terminfo[knp]}" end-of-buffer-or-history # PageDown

# Emacs backward/forward word
bindkey '\eOd' backward-word # Control+Left
bindkey '\eOc' forward-word # Control+Right
