if "$PROFILE_BSD"; then
    # Enable colored version
    alias lsc='colorls -G'
fi

if "$PROFILE_LINUX"; then
    # Enable color, display directories before files
    alias lsc='ls --color --group-directories-first'
fi

#
# `F` to append file indicators (`/` for dir, `@` for link, etc),
# `h` to display human readable sizes (for when combined with `l`).
#
alias ls="lsc -Fh"

# List view
alias l='ls -l'

# Compatibility with common aliases
alias ll='l'

# Show almost all (except `.` and `..`)
alias la='l -A'

# Simple move command
alias mmv='noglob zmv -W'

#
# `E` for extended regular expressions,
# `i` to be case insensitive.
#
# Also enable color.
#
alias grep='grep -Ei'

if "$PROFILE_LINUX"; then
    # Enable color
    alias grep='grep --color'
fi

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
