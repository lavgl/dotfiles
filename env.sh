#!/bin/zsh

export PATH="$HOME/bin:$PATH"
export EDITOR=vim

fpath=($HOME/.zsh_functions ${fpath})

alias gs="git status"
alias gl='git log --oneline --decorate --graph'
alias gd='git diff'

alias :q="exit"


export SDKMAN_DIR="/Users/avg/.sdkman"
[[ -s "/Users/avg/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/avg/.sdkman/bin/sdkman-init.sh"

export GOPATH="/Users/avg/projects/go"
export PATH="$PATH:$GOPATH/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
