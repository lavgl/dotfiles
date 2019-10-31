export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh # If you come from bash you might have to change your $PATH.

export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

fpath=($HOME/.zsh_functions ${fpath})

export EDITOR=vim

alias gs="git status"
alias gl='git log --oneline --decorate --graph'
alias gd='git diff'
alias gp='git pull'
alias gg='git checkout '

alias e="emacs -nw"
alias :q="exit"
alias xp="xmllint --format - >"

function db() {
	s="$1"
	echo "Connecting to service $s"
	pgcli service="$s"
}

function ssrd() {
	local url="$1"
	curl --silent $url | pup '#initial text{}' | jet --from transit --pretty
}

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

[[ $TERM == "alacritty" ]] && exec tmux

bindkey "^?" backward-delete-char

function _POST { curl -n -H 'Content-Type: application/json' -XPOST "$@" }
alias post='noglob _POST'
function _PUT { curl -n -H 'Content-Type: application/json' -XPUT "$@" }
alias put='noglob _PUT'
function _GET { curl -n -H 'Content-Type: application/json' -XGET "$@" }
alias get='noglob _GET'
function _DELETE { curl -n -H 'Content-Type: application/json' -XDELETE "$@" }
alias delete='noglob _DELETE'
