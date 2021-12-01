
###
#   
###

if [[ `uname` == Darwin ]]; then
    export ZSH="/Users/jreeder/.oh-my-zsh"
else
    export ZSH="/home/jreeder/.oh-my-zsh"

ZSH_THEME="miloshadzic"

# PUT RANDOM THEMES HERE
ZSH_THEME_RANDOM_CANDIDATES=()

COMPLETION_WAITING_DOTS="true"

###
#   Plugins
###
plugins=(git)

source $ZSH/oh-my-zsh.sh


setopt AUTO_CD
setopt NO_CASE_GLOB
setopt CORRECT

# Better time print

if [[ `uname` == Darwin ]];  then
    MAX_MEMORY_UNITS=KB
else
    MAX_MEMORY_UNITS=MB
fi

TIMEFMT='%J   %U  user %S system %P cpu %*E total'$'\n'\
'avg shared (code):         %X KB'$'\n'\
'avg unshared (data/stack): %D KB'$'\n'\
'total (sum):               %K KB'$'\n'\
'max memory:                %M '$MAX_MEMORY_UNITS''$'\n'\
'page faults from disk:     %F'$'\n'\
'other page faults:         %R'
