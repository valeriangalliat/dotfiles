#
# Called before command prompt display, used to set terminal title.
#
precmd() {
    #
    # `P` for prompt expansion, see zshmisc(1),
    # `n` to avoid new line.
    #
    # `\e]0;` begins terminal title escape sequence,
    # `\a` ends escape sequence.
    #
    # `%~` displays the path to current directiry,
    # replacing home directory with `~`.
    #
    # The `echo` builtin can't be used for that task because it
    # doesn't supports prompt expansion.
    #
    print -Pn "\e]0;%~\a"
}

#
# Set prompt template.
#
# `%(?..%? )` will display `%?` followed by a space,
# only if `%?` is not zero. Since `colors` is autoloaded, the return error
# code is colored in red using `$fg` map.
#
# `%#` displays the shell privileges (`#` if root, `%` if not).
#
PROMPT="%(?..$fg[red]%?$reset_color )%# "
