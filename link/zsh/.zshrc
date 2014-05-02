#
# ~/.zshrc
#
# See zshbuiltins(1) for zsh commands documentation.
# See zshoptions(1) for options documentation.
#

# Source partial files in order
for file in "$HOME"/.config/zsh/*.zsh; do
    source "$file"
done

# Source local file if exists
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

#
# Prevent the previous command to propagate an error in `$?`
# by executing something that will not fail (typically the NOP command).
#
:
