# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="$HOME/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/avg/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

alias gs="git status"
alias gl='git log --oneline --decorate --graph'
alias e="emacs -nw"

export KEYTIMEOUT=1

bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward

export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user vi_mode dir vcs)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs time)
export POWERLEVEL9K_HIDE_BRANCH_ICON=true
export POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND=orange1
export POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND=black
export POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND=green1
export POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND=black

local POWERLEVEL9K_DIR_COLOR=yellow
export POWERLEVEL9K_DIR_HOME_FOREGROUND=$POWERLEVEL9K_DIR_COLOR
export POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=$POWERLEVEL9K_DIR_COLOR
export POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=$POWERLEVEL9K_DIR_COLOR
export POWERLEVEL9K_DIR_ETC_FOREGROUND=$POWERLEVEL9K_DIR_COLOR

export SDKMAN_DIR="/Users/avg/.sdkman"
[[ -s "/Users/avg/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/avg/.sdkman/bin/sdkman-init.sh"

export GOPATH="/Users/avg/projects/go"
