# asdf hack to make it faster for the global path
asdf() {
    [ -d ~/.asdf ] || git clone https://github.com/asdf-vm/asdf ~/.asdf
    [ -d ~/.asdf/asdf-use ] || git clone https://github.com/valeriangalliat/asdf-use ~/.asdf/asdf-use
    . ~/.asdf/asdf.sh
    . ~/.asdf/asdf-use/asdf-use.sh

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
