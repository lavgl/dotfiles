#!/bin/zsh

export PATH="$HOME/bin:$PATH"

export EDITOR=vim

alias gs="git status"
alias gl='git log --oneline --decorate --graph'
alias gd='git diff'

export SDKMAN_DIR="/Users/avg/.sdkman"
[[ -s "/Users/avg/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/avg/.sdkman/bin/sdkman-init.sh"

export GOPATH="/Users/avg/projects/go"
export PATH="$PATH:$GOPATH/bin"
