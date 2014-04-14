HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Include dotfiles' bin if exists
[ -d "$DOTFILES/bin" ] && PATH=$DOTFILES/bin:$PATH

# Include private bin if exists
[ -d ~/bin ] && PATH=~/bin:$PATH

# Set custom directory colors
eval "$(dircolors $HOME/.dircolors)"
