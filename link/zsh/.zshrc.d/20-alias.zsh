#
# `F` to append file indicators (`/` for dir, `@` for link, etc),
# `h` to display human readable sizes (for when combined with `l`).
#
# Also enable color and display directories before files.
#
alias ls="ls -Fh --color --group-directories-first"

# List view
alias l="ls -l"

# Compatibility with common aliases
alias ll="l"

# Show almost all (except `.` and `..`)
alias la="l -A"

#
# `E` for extended regular expressions,
# `i` to be case insensitive.
#
# Also enable color.
#
alias grep="grep -Ei --color"

# Always recursive copy
alias cp="cp -r"

# Always substitute with real login environment
alias su="su -"

# Shortcut to quit terminal
alias q="exit"

# Get remote IP from SFR box homepage (absolute grep to skip alias)
alias ipb="curl -s 192.168.1.1 | awk '/Adresse IP/{getline;print;exit}' | /usr/bin/grep -Eo '[0-9\.]+'"

# Get remote IP from CodeJam (at home)
alias ipc="curl ip.codejam.info && echo"

# Get remote IP from Deblan (can't use home server when in LAN)
alias ipd="curl ip.deblan.org && echo"
