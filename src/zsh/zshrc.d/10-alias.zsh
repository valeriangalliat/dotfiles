# Enable color if possible
if "$PROFILE_OPENBSD"; then
    _ls='colorls -G'
elif "$PROFILE_FREEBSD"; then
    _ls='ls -G'
elif "$PROFILE_LINUX"; then
    _ls='ls --color'
else
    _ls='ls'
fi

if "$PROFILE_LINUX"; then
    # Display directories before files
    _ls="$_ls --group-directories-first"
fi

#
# `F` to append file indicators (`/` for dir, `@` for link, etc),
# `h` to display human readable sizes (for when combined with `l`).
#
alias ls="$_ls -Fh"
unset _ls

# List view
alias l='ls -l'

# Compatibility with common aliases
alias ll='l'

# Show almost all (except `.` and `..`)
alias la='l -A'

# Simple move command
alias mmv='noglob zmv -W'

# Enable color if possible
if "$PROFILE_LINUX" || "$PROFILE_FREEBSD"; then
    _grep='grep --color'
else
    _grep='grep'
fi

#
# `E` for extended regular expressions,
# `i` to be case insensitive.
#
alias grep="$_grep -Ei"
unset _grep

# Always recursive copy
alias cp='cp -r'

# Misc aliases
alias q='exit'
alias j='jobs'
alias r='reset' # Overrides a zsh builtin
alias c='clear'
alias p="$AUDIO_PLAYER"

# Get remote IP from SFR box homepage (absolute grep to skip alias)
alias ipb="curl -s 192.168.1.1 | awk '/Adresse IP/{getline;print;exit}' | /usr/bin/grep -Eo '[0-9\.]+'"

# Get remote IP from CodeJam (at home)
alias ipc='curl ip.codejam.info && echo'

# Get remote IP from Deblan (can't use home server when in LAN)
alias ipd='curl ip.deblan.org && echo'

# Infinite funk
alias funk="p 'http://gene-wr05.ice.infomaniak.ch/gene-wr05.mp3'"
