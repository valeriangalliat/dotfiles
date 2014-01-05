# Include dotfiles' bin if exists
[ -d ~/dotfiles/bin ] && PATH=~/dotfiles/bin:$PATH

# Include private bin if exists
[ -d ~/bin ] && PATH=~/bin:$PATH
