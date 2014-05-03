if "$PROFILE_BSD"; then
    # Enable colored version
    _ls='colorls -G'
elif "$PROFILE_LINUX"; then
    # Enable color, display directories before files
    _ls='ls --color --group-directories-first'
else
    _ls='ls'
fi

#
# `F` to append file indicators (`/` for dir, `@` for link, etc),
# `h` to display human readable sizes (for when combined with `l`).
#
alias ls="$_ls -Fh"

# List view
alias l='ls -l'

# Compatibility with common aliases
alias ll='l'

# Show almost all (except `.` and `..`)
alias la='l -A'

# Simple move command
alias mmv='noglob zmv -W'

if "$PROFILE_LINUX"; then
    # Enable color
    _grep='grep --color'
else
    _grep='grep'
fi

#
# `E` for extended regular expressions,
# `i` to be case insensitive.
#
# Also enable color.
#
_grep="$_grep -Ei"

# Always recursive copy
alias cp='cp -r'

# Misc aliases
alias q='exit'
alias j='jobs'
alias r='reset' # Overrides a zsh builtin
alias c='clear'

# Get remote IP from SFR box homepage (absolute grep to skip alias)
alias ipb="curl -s 192.168.1.1 | awk '/Adresse IP/{getline;print;exit}' | /usr/bin/grep -Eo '[0-9\.]+'"

# Get remote IP from CodeJam (at home)
alias ipc='curl ip.codejam.info && echo'

# Get remote IP from Deblan (can't use home server when in LAN)
alias ipd='curl ip.deblan.org && echo'

# Infinite funk
alias funk='ffplay -nodisp "http://gene-wr05.ice.infomaniak.ch/gene-wr05.mp3"'
