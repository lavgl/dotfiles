# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -v

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}


# --------------------
# Module configuration
# --------------------

#
# zsh-autosuggestions
#

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=10'

# ------------------
# Initialize modules
# ------------------

if [[ ${ZIM_HOME}/init.zsh -ot ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Update static initialization script if it's outdated, before sourcing it
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}} End configuration added by Zim install

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
alias kd="kafkacat -b 'reg1.mk.prod:9092,reg2.mk.prod:9092,reg3.mk.prod:9092'"

alias dokku='bash $HOME/.dokku/contrib/dokku_client.sh'
export DOKKU_HOST='172.105.85.164'

source /Users/avg/Library/Preferences/org.dystroy.broot/launcher/bash/br

alias python2='/usr/local/opt/python@2/bin/python2'
alias python3="/usr/local/opt/python@3/bin/python3"
alias python=python3
alias pip2="/usr/local/bin/pip2"
alias pip3="/usr/local/opt/python@3/bin/pip3"
alias pip=pip3
alias ra=ranger
