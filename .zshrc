# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export CC=/usr/bin/gcc-11
export GXX=/usr/bin/g++-11

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

#export PATH=/opt/pm883-1/kihwan/mysql-8.0.27/build/lib:$PATH
export PATH=/opt/pm883-1/kihwan/llvm-14.x/bin:$PATH

neofetch

alias makeCscopeFiles="find ./ \( -path ./test -prune -o -path ./sql-common -prune -o -path ./build -prune -o -path ./testclients -prune -o -path ./plugin -prune -o -path ./extra -prune -o -path ./unittest -prune -o -path ./router -prune -o -path ./vio -prune -o -path ./mysql-test -prune -o -path ./backtrace/visualization -prune -o -path ./client -prune -o -path ./utilities -prune -o -path ./components -prune \) -o -regextype posix-extended -regex '.*\.(h|c|cc|hpp|cpp|pl)$' -print > cscope.files"

alias ssd="cd /opt/pm883-1/kihwan"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/pm883-1/kihwan/chbenchmark/mysql/HammerDB-4.3/lib:/opt/pm883-1/kihwan/mysql-8.0.27/build/lib:/opt/p3608-1/kihwan/diva_postgres/postgres/src/interfaces/libpq

# liburing
export LD_PRELOAD=/usr/lib/liburing.so

# jemalloc
# export LD_PRELOAD=/usr/local/lib/libjemalloc.so

# tcmalloc
# export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libtcmalloc.so.4

# postgres
export PGHOST=localhost

# for using schemecolor in tmux
export TERM=screen-256color

# clang
export CLANG=/usr/bin/clang

# prompt
export PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+="%{$fg_bold[purple]%}%n@%m"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
