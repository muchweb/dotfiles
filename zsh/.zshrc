# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="rkj-repos"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sudo)

source $ZSH/oh-my-zsh.sh

alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
# = Cheat sheet =
# alias l='ls -lFh' #size,show type,human readable
# alias la='ls -lAFh' #long list,show almost all,show type,human readable
# alias lr='ls -tRFh' #sorted by date,recursive,show type,human readable

# Installing global GEM modules in home
if hash ruby 2>/dev/null; then
 export GEM_HOME=$HOME/.gems
 export GEM_HOME=$(ruby -e 'print Gem.user_dir')
 export PATH="$GEM_HOME/bin:$PATH"
fi

# Installing global NPM modules in home
if hash npm 2>/dev/null; then
 export PATH=$HOME/.npm/bin:$PATH
fi

# GO
export GOPATH=~/go

# Set editor to emacs
export EDITOR=/usr/bin/emacs
export VISUAL=/usr/bin/emacs

# get external IP address
alias myip="curl ifconfig.me"

# Mutt background fix
COLORFGBG="default;default"

# TTY Colours
if [ "$TERM" = "linux" ]; then
    setfont ter-114n
    echo -en "\e]P0232323" #black
    echo -en "\e]P82B2B2B" #darkgrey
    echo -en "\e]P1D75F5F" #darkred
    echo -en "\e]P9E33636" #red
    echo -en "\e]P287AF5F" #darkgreen
    echo -en "\e]PA98E34D" #green
    echo -en "\e]P3D7AF87" #brown
    echo -en "\e]PBFFD75F" #yellow
    echo -en "\e]P48787AF" #darkblue
    echo -en "\e]PC7373C9" #blue
    echo -en "\e]P5BD53A5" #darkmagenta
    echo -en "\e]PDD633B2" #magenta
    echo -en "\e]P65FAFAF" #darkcyan
    echo -en "\e]PE44C9C9" #cyan
    echo -en "\e]P7E5E5E5" #lightgrey
    echo -en "\e]PFFFFFFF" #white
fi
