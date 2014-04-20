#
# ~/.zshenv
#

export DOTFILES=~/dotfiles
export EDITOR=vim

export HISTFILE=~/.histfile
export HISTSIZE=1000
export SAVEHIST=1000

# Include dotfiles' bin if exists
[ -d "$DOTFILES/bin" ] && PATH="$DOTFILES/bin:$PATH"

# Include private bin if exists
[ -d ~/bin ] && PATH="$HOME/bin:$PATH"

export PATH

# Set custom directory colors
eval "$(dircolors $HOME/.dircolors)"
export LS_COLORS
