# asdf hack to make it faster for the global path
asdf() {
    [ -d ~/.asdf ] || git clone https://github.com/asdf-vm/asdf ~/.asdf
    . ~/.asdf/asdf.sh

    if [ "$#" -gt 0 ]; then
        asdf "$@"
    fi
}

if [ -f ~/.tool-versions ]; then
    cat ~/.tool-versions | while read name version; do
        export PATH="$HOME/.asdf/installs/$name/$version/bin:$PATH"
    done
fi
