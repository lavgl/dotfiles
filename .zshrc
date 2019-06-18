export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh # If you come from bash you might have to change your $PATH.

export PATH="$HOME/bin:$PATH"

fpath=($HOME/.zsh_functions ${fpath})

export EDITOR=vim

alias gs="git status"
alias gl='git log --oneline --decorate --graph'
alias gd='git diff'
alias gp='git pull'
alias go='git checkout '

alias e="emacs -nw"
alias :q="exit"
alias xp="xmllint --format - >"

function db() {
	s="$1"
	echo "Connecting to service $s"
	pgcli service="$s"
}

export SDKMAN_DIR="/Users/avg/.sdkman"
[[ -s "/Users/avg/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/avg/.sdkman/bin/sdkman-init.sh"

export GOPATH="/Users/avg/projects/go"
export PATH="$PATH:$GOPATH/bin"

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
[ -f /usr/local/etc/profile.d/z.sh ] && . /usr/local/etc/profile.d/z.sh


[[ $TERM == "alacritty" ]] && exec tmux

bindkey "^?" backward-delete-char

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
