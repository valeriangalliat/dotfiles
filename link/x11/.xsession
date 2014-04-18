# Load resources file if exist
[ -f ~/.Xresources ] && xrdb ~/.Xresources

# Auto lock screen if required softwares are installed
which xautolock && which slock && xautolock -time 1 -locker slock &

# Execute redshift if available
which redshift && redshift -l 45.209481:5.788305 &

# Execute window manager
exec i3
