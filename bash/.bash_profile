# Include dotfiles' bin if exists
if [ -d "$HOME/dotfiles/bin" ]; then
    PATH="$HOME/dotfiles/bin:$PATH"
fi

# Include private bin if exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi
