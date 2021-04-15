# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jreeder/.oh-my-zsh"

CPLUS_INCLUDE_PATH=/usr/local/opt
export CPLUS_INCLUDE_PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="pi"

PROMPT='%(?.%F{green}√.%F{red}?%?)%f %F{184}%2~ > '

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


# Prompt before removing or overwriting files with common commands.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#user alias
alias lo='exit'
alias cj='ssh -X joey11.computing.clemson.edu'
alias g++='g++ -Wall -std=c++17'
alias pv='open -a Preview.app'
alias aftp='sftp access1.computing.clemson.edu'
alias assh='ssh -X access1.computing.clemson.edu'
alias aws-dndb='ssh -i ~/.ssh/DNDB_Key.pem ubuntu@ec2-34-205-240-136.compute-1.amazonaws.com'
alias aws-dndb-sftp='sftp -i ~/.ssh/DNDB_Key.pem ubuntu@ec2-34-205-240-136.compute-1.amazonaws.com'



alias ls='ls -CF'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias sc='~/School/'

alias mongod='mongod --dbpath /Users/jreeder/RPG\ STUFF/DNDB/db'


setopt AUTO_CD
setopt NO_CASE_GLOB
setopt CORRECT

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jreeder/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jreeder/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jreeder/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jreeder/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias makettk="cd /Users/jreeder/ttk/ttk-0.9.7/build && make && sudo make install && cd -"
alias paraview=/Users/jreeder/ttk/ParaView-v5.6.0/build/bin/paraview.app/Contents/MacOS/paraview
alias py=/usr/bin/python3
export CMAKE_PREFIX_PATH=:/usr/local/opt/qt/lib/cmake:/Applications/lib/cmake/
export DYLD_LIBRARY_PATH=:/Applications/lib/
export PATH=/Users/jreeder/opt/anaconda3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/opt/X11/bin:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/bin/
export PV_PLUGIN_PATH=:/Applications/bin/plugins/
export PYTHONPATH=:/Applications/lib/python3.8/site-packages/

# export PATH="/usr/local/opt/python@3/libexec/bin/:$PATH"
#export PATH="/usr/local/Cellar/python@3.8/3.8.7/bin/:$PATH"
export PV_PLUGIN_PATH="/usr/local/lib/plugins"
#export PATH="/usr/local/opt/python@3.8/bin:$PATH"

if command -v tmux &> /dev/null && \
    [ -n "$PS1" ] && \
    [[ ! "$TERM" =~ screen ]] && \
    [[ ! "$TERM" =~ tmux ]] && \
    [ -z "$TMUX" ]
then
  exec tmux
fi
