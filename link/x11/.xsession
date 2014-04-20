#
# ~/.xsession
#
# Executed at X11 start. Load and execute stuff, then start environment.
#

# Load resources file if exist
[ -f ~/.Xresources ] && xrdb ~/.Xresources

# Auto lock screen if all commands are available
command -v xautolock block && command -v $(block -d) && xautolock -time 5 -locker block &

# Execute redshift if available
command -v redshift && redshift -l 45.209481:5.788305 &

# Execute window manager
exec i3
