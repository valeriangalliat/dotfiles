#
# Helper to emulate cp/ln arguments style.
#
# Define a shell script with a `main` function, taking a single source
# and destination file, then source this script. The `main` function
# will be called as many times as needed with resolved files.
#

# Need at least two arguments
if [ $# -lt 2 ]; then
    echo 'Not enough arguments' >&2
    exit 1
fi

# The destination is the last argument
dest=$(eval echo \$$#)

# File destination
if [ ! -d "$dest" ]; then
    # Only one possible input for a file destination
    if [ $# != 2 ]; then
        echo "$dest is not a directory" >&2
        exit 1
    fi

    main "$1" "$dest"
    exit
fi

# Directory destination
for x in "$@"; do
    shift

    # Resolve the destination file
    main "$x" "$dest/$(basename "$x")"

    # Stop before the last argument (destination)
    if [ $# = 1 ]; then
        break
    fi
done
