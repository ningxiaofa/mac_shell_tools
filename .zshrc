# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Added by self
# lua
# alias lua53="$HOME/Documents/Env/lua/lua-5.3.0/src/lua"
# alias lua54="$HOME/Documents/Env/lua/lua-5.4.4/src/lua"
# alias lua="$HOME/Documents/Env/lua/lua-5.4.4/src/lua"

# php
alias php72="/usr/local/opt/php@7.2/bin/php"
alias php74="/usr/local/opt/php@7.4/bin/php"
alias php82="/usr/local/opt/php@8.2/bin/php"

# ssh [testing server]
# alias ssh-testing="sudo ssh -i /Users/mac/Downloads/west1_test.pem root@54.183.13.75"
# chmod 400 /Users/mac/Downloads/west1_test.pem 后似乎便不用再使用sudo
alias ssh-testing="ssh -i /Users/mac/Downloads/west1_test.pem root@54.183.13.75"
# ssh into production env
alias ssh-solitaire="ssh root@ec2-18-119-111-198.us-east-2.compute.amazonaws.com"
alias ssh-ios-solitaire="ssh root@ec2-3-143-237-177.us-east-2.compute.amazonaws.com"
alias ssh-smash="ssh root@ec2-52-14-161-178.us-east-2.compute.amazonaws.com"
alias ssh-21="ssh root@ec2-18-191-211-214.us-east-2.compute.amazonaws.com"
alias ssh-bingo="ssh root@ec2-3-134-81-136.us-east-2.compute.amazonaws.com"
# alias ssh-bingo="ssh -i /Users/mac/Downloads/id_rsa_wudi root@ec2-3-134-81-136.us-east-2.compute.amazonaws.com"

# ssh tunnel [redis]
alias ssh-testing-center="ssh -L 8888:test-ding.j9afbi.ng.0001.usw1.cache.amazonaws.com:6379 root@54.183.13.75"
alias ssh-testing-local="ssh -L 9999:localhost:6379 root@54.183.13.75"

# php artisan
alias pa="php74 artisan"
alias pat="php74 artisan daily_task create_daily_table"
alias pal="php74 artisan daily_task store_log"

# 历史命令简化
alias history10="tail -n 10 ~/.zsh_history"
alias history30="tail -n 30 ~/.zsh_history"
alias history50="tail -n 50 ~/.zsh_history"
alias history100="tail -n 100 ~/.zsh_history"
# 扩展统一为:
alias myhistory='function _myhistory(){ tail -n $1 ~/.zsh_history; }; _myhistory'
alias myhist='function _myhist(){ ~/Documents/code/shell/shell_tools/./myhistory.sh "$@"; }; _myhist'

# mysql
alias mysqldump="/usr/local/opt/mysql-client/bin/mysqldump"

# zip加密
alias zipe='zip -re -P Nxf=1104'

# 目录
alias cdhtml='cd ~/Documents/env/docker/docker-lnmp-dev-env-sh/html'

# git
# git add & commit
alias gitac='function _gitac(){ ~/Documents/code/shell/shell_tools/git/./gitac.sh "$@"; }; _gitac'
# git add & commit & pull & push
alias gitall='function _gitall(){ ~/Documents/code/shell/shell_tools/git/./gitall.sh "$@"; }; _gitall'
alias gitc='git checkout -'
