# asdf hack to make it faster for the global path
asdf() {
    [ -d ~/.asdf ] || git clone https://github.com/asdf-vm/asdf ~/.asdf
    [ -d ~/.asdf/asdf-partial ] || git clone https://github.com/valeriangalliat/asdf-partial ~/.asdf/asdf-partial
    . ~/.asdf/asdf.sh
    export PATH=~/projects/asdf-partial:$PATH

    if [ "$#" -gt 0 ]; then
        asdf "$@"
    fi
}

if [ -f ~/.tool-versions ]; then
    cat ~/.tool-versions | while read name version; do
        export PATH="$HOME/.asdf/installs/$name/$version/bin:$PATH"

        if [ "$name" = nodejs ]; then
            export PATH="$HOME/.asdf/installs/$name/$version/.npm/bin:$PATH"
        fi
    done
fi
