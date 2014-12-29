#
# fzf functions from <https://github.com/junegunn/fzf/wiki/examples>.
#

#
# Open the selected file with the default editor.
#
# * Bypass fuzzy finder if there's only one match (`--select-1`).
# * Exit if there's no match (`--exit-0`).
#
fe() {
    local file=$(fzf --query="$1" --select-1 --exit-0)
    [ -n "$file" ] && ${EDITOR:-vi} "$file"
}

#
# Equivalent to above, but open with `xdg-open` command.
#
fo() {
    local file=$(fzf --query="$1" --select-1 --exit-0)
    [ -n "$file" ] && xdg-open "$file"
}

#
# `cd` to selected directory.
#
fd() {
    local dir=$(
        find "${1:-.}" -path '*/\.*' -prune \
            -o -type d -print 2> /dev/null \
            | fzf +m
    )

    [ -n "$dir" ] && cd "$dir"
}

#
# Equivalent to above, but include hidden directories.
#
fda() {
    local dir=$(find "${1:-.}" -type d 2> /dev/null | fzf +m)
    [ -n "$dir" ] && cd "$dir"
}

#
# `cd` into the directory of the selected file.
#
cdf() {
     local file
     local dir
     file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}

#
# Search history.
#
fh() {
    command=$(history | fzf +s | sed 's/ *[0-9]* *//')
    print -z "$command"
}

#
# Kill process.
#
fkill() {
    pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
    [ -n "$pid" ] && kill "${1:--15}" "$pid"
}

#
# Checkout Git branch.
#
fbr() {
    local branches=$(git branch)
    local branch=$(echo "$branches" | fzf +s +m | sed 's/.* //')
    [ -n "$branch" ] && git checkout "$branch"
}

#
# Checkout Git commit.
#
fco() {
    local commits=$(git log --pretty=oneline --abbrev-commit --reverse)
    local commit=$(echo "$commits" | fzf +s +m -e | sed 's/ .*//')
    [ -n "$commit" ] && git checkout "$commit"
}

unalias z

#
# Integration with `z`, like normal `z` when used with arguments,
# but displays an fzf prompt when used without.
#
z() {
    if [ -z "$*" ]; then
        cd "$(_z -l 2>&1 | sed -n 's/^[ 0-9.,]*//p' | fzf)"
    else
        _z "$@"
    fi
}
