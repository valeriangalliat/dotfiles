#
# ~/.zshrc
#
# See zshbuiltins(1) for zsh commands documentation.
# See zshoptions(1) for options documentation.
#

for file in ~/.config/zsh/zshrc.d/*.zsh; do
    . "$file"
done

if [ -d ~/.config/zsh/zshrc.local.d ]; then
    for file in ~/.config/zsh/zshrc.local.d/*.zsh; do
        . "$file"
    done
fi

#
# Prevent the previous command to propagate an error in `$?`
# by executing something that will not fail (typically the NOP command).
#
:
