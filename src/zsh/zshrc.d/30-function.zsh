#
# Change directory and list files.
#
# $1: Directory
#
d() {
    cd "$1"
    ls
}

#
# Play a video from a JeuxVideo.com page.
#
# $1: Page URL
#
jvcp() {
    "$VIDEO_PLAYER" $("$DOTFILES/deps/zsh/jvc-tools/video" "$1")
}
