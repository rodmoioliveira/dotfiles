# # Use emacs keybindings even if our EDITOR is set to vi
# bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# ZSH_THEME="avit"

# Use modern completion system
autoload -Uz compinit
compinit

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/rodmoioliveira/Desenvolvimento/.ohmyzsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=random

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "bira" "gnzh" "philips" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
# plugins=(
#   git-open
# )

source $ZSH/oh-my-zsh.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# GIT
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gpo='git push origin'
alias glo='git pull origin'
alias gpom='git push origin master'
alias glom='git pull origin master'
alias glod='git pull origin develop'
alias gac='git add -A && git commit -m'
alias gc='git commit'
alias gcm='git commit -m'
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b'
alias glog='git log'
alias ghist='git log --oneline --graph --decorate --all'
alias gd='git diff'
alias gs='git stash --include-untracked'
alias go='git open'

# Vim is now Neovim
alias vim='nvim'
alias vimso='nvim -c ":so ./Session.vim"'

# NPM
alias nrs='npm run server'
alias nrs='npm run server'
alias ns='npm start'
alias nrb='npm run build'

# DEPLOY TSURU
alias bh='echo "building homolog..." && ./config/build-templates.sh homolog && gac "build homolog"'
alias dh='echo "deploy homolog..." && git push homolog-api develop:master -f &&
git push homolog-dinamic develop:master -f &&
git push homolog-votes develop:master -f'
alias bp='echo "building production..." && ./config/build-templates.sh prod && gac "build prod"'
alias dp='echo "deploy production..." && git push prod-api master -f &&
git push prod-dinamic master -f &&
git push prod-votes master -f'


# virtual env for python
# export WORKON_HOME=$HOME/.virtualenvs
# export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
# export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3 '
# export PROJECT_HOME=$HOME/Devel
# source $HOME/.local/bin/virtualenvwrapper.sh

# vim mode
# bindkey -v

# Syntax Highlighting
source /home/rodmoioliveira/Desenvolvimento/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Python version system
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"
