copy zshrc.home .config/zsh/zshrc
copy zshenv.home .config/zsh/zshenv

hlink .config/zsh/zshrc .zshrc
hlink .config/zsh/zshenv .zshenv

mkdir -p ~/.cache/zsh
