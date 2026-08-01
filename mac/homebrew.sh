#!/bin/sh -e

if command -v brew > /dev/null 2>&1; then
	return 0
fi

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/opt/homebrew/bin/brew shellenv >> ~/.zshenv
eval "$(/opt/homebrew/bin/brew shellenv)"
