## ASDF Language manager
. $HOME/.asdf/asdf.sh
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)

## Added custom ZSH Profile ##
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
  history-substring-search
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# https://github.com/zsh-users/zsh-completions
autoload -Uz compinit 
compinit 


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

## Load custom ZSH profile
#if [ -f ~/.dotfiles/.zsh_profile ]; then
#    source ~/.dotfiles/.zsh_profile
#else
#    print "404: ~/.dotfiles/.zsh_profile not found."
#fi


## FZF configurations
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

#export FZF_DEFAULT_COMMAND="rg --files --no-ignore --hidden --follow --glob '!.git'"
#export FZF_DEFAULT_OPTS='--layout=reverse --height 40%'
#export FZF_DEFAULT_COMMAND="rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob '!.git/*' --color 'always'"

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
#export FZF_DEFAULT_COMMAND="rg --files --no-ignore --hidden --follow --glob '!.git/*'"

alias v="nvim"
alias vi="nvim"
alias vv="vim ~/.vimrc"
alias sv="source ~/.vimrc && source ~/.config/nvim/init.vim"
alias sz="source ~/.zshrc"
alias zz="vim ~/.zshrc"
alias ll="ls -lat"
# https://dev.to/matrixersp/how-to-use-fzf-with-ripgrep-to-selectively-ignore-vcs-files-4e27
alias fzfi='rg --files --hidden --follow --no-ignore-vcs -g "!{node_modules,.git}" | fzf'
alias vifi='vim $(fzfi)'
# tmux
alias tmux="TERM=screen-256color-bce tmux"
# DB
alias ppsql="sudo -u postgres psql"
# Python
alias pm="python manage.py"
alias pmrs="python manage.py runserver 0.0.0.0:8000"
# For local
export PATH=$HOME/.local/bin:$PATH
#export PATH=/usr/bin:$PATH

# ZSH plugins
#source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # https://github.com/zsh-users/zsh-syntax-highlighting
#source zsh-history-substring-search.zsh # https://github.com/zsh-users/zsh-history-substring-search
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh # https://github.com/zsh-users/zsh-autosuggestions

eval `ssh-agent`
ssh-add ~/.ssh/id_github

#CUSTOM_NVIM_PATH=/usr/local/bin/nvim.appimage
#source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/admin/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/admin/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/admin/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/admin/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

