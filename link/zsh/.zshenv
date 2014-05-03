#
# ~/.zshenv
#
# This file contains a script to compute and cache environment variables
# automatically.
#
# See `~/.config/profile` for real configuration.
#

# Whether to generate the cache
PROFILE_CACHE=false

if [ -f ~/.cache/profile ]; then
    . ~/.cache/profile
else
    # The cache needs to be generated
    PROFILE_CACHE=true

    PROFILE_LINUX=false
    PROFILE_BSD=false
    PROFILE_OPENBSD=false
    PROFILE_FREEBSD=false

    case "$(uname)" in
        Linux) PROFILE_LINUX=true ;;
        *BSD) PROFILE_BSD=true ;&
        OpenBSD) PROFILE_OPENBSD=true ;;
        FreeBSD) PROFILE_FREEBSD=true ;;
    esac

    # Create cache directory if needed
    [ ! -d ~/.cache ] && mkdir ~/.cache

    # Write to cache file
    profile_cache() {
        echo "$@" >> ~/.cache/profile
    }

    profile_cache "PROFILE_LINUX=$PROFILE_LINUX"
    profile_cache "PROFILE_BSD=$PROFILE_BSD"
    profile_cache "PROFILE_OPENBSD=$PROFILE_OPENBSD"
    profile_cache "PROFILE_FREEBSD=$PROFILE_FREEBSD"
fi

#
# When the cache exists, it is already loaded, otherwise, the needed
# variables are already computed.
#
. ~/.config/profile

if "$PROFILE_CACHE"; then
    #
    # Use `set` to dump all defined variables and find the lines beginning
    # with `GRACEFUL_` to process them.
    #
    set | while read l; do
        # Pass if the line does not begins with `GRACEFUL_`
        [[ "$l" != GRACEFUL_* ]] && continue

        # Delete everything after `=` (graceful variable)
        g="${l%=*}"

        # Delete prefix (final export)
        e="${g#GRACEFUL_}"

        #
        # Loop through the graceful variable content.
        #
        # Caution: this is not properly escaped.
        #
        for c in $(eval "echo \$$g"); do
            #
            # In zsh, the `commands` variable is a map indexed by command
            # names. If the command exists, export it and append the export
            # to the cache.
            #
            if (( $+commands[$c] )); then
                export "$e=$c"
                profile_cache "export $e=$c"
                break
            fi
        done
    done

    # Compute path
    export PATH="${PROFILE_PATH}$PATH"
    profile_cache "export PATH='$PROFILE_PATH'"'"$PATH"'
fi
