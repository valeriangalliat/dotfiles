#
# ~/.xsession
#
# Executed at X11 start. Load and execute stuff, then start environment.
#

# Load resources file if exist
[ -f ~/.Xresources ] && xrdb ~/.Xresources

# Auto lock screen if all commands are available
command -v xautolock block && command -v $(block -d) && xautolock -time 5 -locker block &

if command -v redshift; then
    # Execute redshift if available

    if redshift -l list | grep geoclue; then
        # Use GeoClue provider
        redshift -l geoclue:name=org.freedesktop.Geoclue.Providers.Hostip:path=/org/freedesktop/Geoclue/Providers/Hostip &
    else
        # Static location (Grenoble)
        redshift -l 45.188529:5.724524 &
    fi
fi

# Execute window manager
exec i3
