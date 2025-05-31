export PATH="$HOME/.asdf/shims:$PATH"

if [ -f ~/.tool-versions ]; then
    cat ~/.tool-versions | while read name version; do
        export PATH="$HOME/.asdf/installs/$name/$version/bin:$PATH"

        if [ "$name" = nodejs ]; then
            export PATH="$HOME/.asdf/installs/$name/$version/.npm/bin:$PATH"
        fi
    done
fi
