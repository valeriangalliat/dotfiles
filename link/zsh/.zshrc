HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory autocd extendedglob nomatch notify HIST_IGNORE_DUPS
unsetopt beep

bindkey -v
zstyle :compinstall filename '/home/hap/.zshrc'

autoload -U compinit
compinit

autoload -U promptinit
promptinit

# Include dotfiles' bin if exists
[ -d ~/dotfiles/bin ] && PATH=~/dotfiles/bin:$PATH

# Include private bin if exists
[ -d ~/bin ] && PATH=~/bin:$PATH

precmd() {
    print -Pn "\e]0;%~\a"
}

PROMPT="%(?..%? )%# "

alias ls="ls -Fh --color=auto --group-directories-first"
alias l="ls -l"
alias la="l -A"

alias grep="grep --color=auto"
