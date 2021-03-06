if [ "$TMUX" = "" ]; then exec tmux; fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/imre/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws docker ubuntu vi-mode terraform)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

eval $(thefuck --alias)

export VIRTUALENV_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Go stuff
export GOPATH=$HOME/code/go
export GOBIN=$GOPATH/bin
PATH=$GOBIN:$PATH
export PATH

# NSB stuff
export NSB_HOME=$HOME/code/nsb
export NSB_AWS_USERNAME=imre
export NSB_SCRIPT_DIR=$NSB_HOME/prm-scripts
export NSB_SSH_CONFIG_DIR="/home/imre/code/nsb/prm-infrastructure/ssh_config"
export PASSWORD_STORE_DIR=$NSB_HOME/.password-store-prm
export KEYNAME="$(gpg -K --with-colons | grep ^sec | cut -d: -f5)"
[ -f "$NSB_HOME/prm-scripts/bin/nsb" ] && eval "$($NSB_HOME/prm-scripts/bin/nsb init -)"

function cdn() {
    cd ${NSB_HOME}/${1}
}

export GPG_TTY=$(tty)

# added by travis gem
# [ -f /home/imre/.travis/travis.sh ] && source /home/imre/.travis/travis.sh
PATH="$PATH:/home/imre/.conscript/bin"

export EDITOR=vi
set editing-mode vi
alias cim="git commit -a -t <(git rev-parse --abbrev-ref HEAD | sed 's/_/ /g; s/ /: /') && gpsup"
alias ci="git commit -a -t <(git rev-parse --abbrev-ref HEAD | sed 's/_.*$/: /') && git push"

[ -d /usr/local/bin/aarch64-none-elf/bin ] && PATH="/usr/local/bin/aarch64-none-elf/bin:$PATH"

[ -d "$HOME/.cargo/bin" ] && export PATH="$HOME/.cargo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
function loadnvm() {
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
}

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

# LSD
alias ls="lsd"

PATH="$PATH:/home/imre/.cabal/bin"
