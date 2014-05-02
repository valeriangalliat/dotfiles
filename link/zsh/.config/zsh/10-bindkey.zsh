# Multiple undo/redo in Vi command mode
bindkey -a u undo
bindkey -a '^R' redo

# Undo/redo in Vi insert mode
bindkey -v '^Z' undo
bindkey -v '^R' redo
