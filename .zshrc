export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh # If you come from bash you might have to change your $PATH.

export PATH="$HOME/bin:$PATH"

fpath=($HOME/.zsh_functions ${fpath})

export EDITOR=vim

alias gs="git status"
alias gl='git log --oneline --decorate --graph'
alias gd='git diff'

alias e="emacs -nw"

export SDKMAN_DIR="/Users/avg/.sdkman"
[[ -s "/Users/avg/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/avg/.sdkman/bin/sdkman-init.sh"

export GOPATH="/Users/avg/projects/go"
export PATH="$PATH:$GOPATH/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
