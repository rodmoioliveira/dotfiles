# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# GraalVM
# export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java8-20.2.0/Contents/Home/bin:$PATH
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-20.2.0/Contents/Home

# Path to your oh-my-zsh installation.
export ZSH="/Users/rodolfo.moi/.oh-my-zsh"

# Coursier Scala
export PATH="$PATH:/Users/rodolfo.moi/Library/Application Support/Coursier/bin"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=random

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

source ~/dotfiles/.aliases

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
alias ga='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b'
alias glog='git log'
alias ghist='git log --oneline --graph --decorate --all'
alias gd='git diff'
alias gs='git stash --include-untracked'
alias gopen='git open'
alias gcl='git clone'
alias gri='git rebase -i'

# Fzf Preview
alias fzfp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

# https://github.com/junegunn/fzf#tips
# use fs to pipe into fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

gcos() {
 git checkout "$(git branch --all | fzf | tr -d '[:space:]')"
}

# Vim is now Neovim
alias vim='nvim'
alias vimso='nvim -c ":so ./Session.vim"'

# Go to DEV dir
alias dev='cd ~/Desenvolvimento'

# Go to DOTFILES dir
alias dot='cd ~/dotfiles'

# Go to QUERIES dir
alias queries='dev && cd queries && vimso'

# NPM
alias nrs='npm run server'
alias ns='npm start'
alias nrb='npm run build'

# Config VIM
alias cvim='vim ~/dotfiles/.vimrc'
alias czsh='vim ~/dotfiles/.zshrc'
alias cssh='vim /Users/rodolfo.moi/.ssh/'

# YARN
alias y='yarn'
alias yd='yarn dev'

# kubectl
source <(kubectl completion zsh)
alias k='kubectl'
alias kg='kubectl get'
alias kges='kubectl get events'
alias kghpa='kubectl get hpa'
alias kging='kubectl get ing'
alias kgns='kubectl get nodes'
alias kgps='kubectl get pods'
alias kgpv='kubectl get pv'
alias kgs='kubectl get services'
alias kl='kubectl logs'
alias kpf=/Users/rodolfo.moi/Desenvolvimento/shell-cmds/kpf.sh
alias log-all-pods="kubectl logs -n acom-npf -l app=catalogo-bff-v2 -f --max-log-requests 20"
alias pp=/Users/rodolfo.moi/Desenvolvimento/shell-cmds/pprof.sh

# Syntax Highlighting
source /usr/local/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# CARGO
export PATH="$HOME/.cargo/bin:$PATH"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# YARN
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"

export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

# Mongo
export PATH="/Users/rodolfo.moi/Desenvolvimento/mongodb/bin:$PATH"

# Starship Config
# export STARSHIP_CONFIG=~/dotfiles/.starship.toml
# eval "$(starship init zsh)"

# Z
eval "$(zoxide init zsh)"

# GO
export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# C
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
