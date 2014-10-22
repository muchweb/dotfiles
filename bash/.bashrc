# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Ubuntu 14.04 docker package
# alias docker='docker.io'

# Default
# [user@host ~]$
# PS1='[\u@\h \W]\$ '

# Custom bash prompt via kirsle.net/wizards/ps1.html
# [user@host ~]$ ls
# export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Weird test
# ┌─[user @ host]─[~]─[1819]
# └─[$]› ls
export PS1="\n\[\e[0;36m\]┌─[\[\e[0m\]\[\e[1;33m\]\u\[\e[0m\]\[\e[1;36m\] @ \[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[0;36m\]]─[\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\[\e[0;36m\]]\[\e[0;36m\]─[\[\e[0m\]\[\e[0;31m\]\!\[\e[0m\]\[\e[0;36m\]]\[\e[0m\]\n\[\e[0;36m\]└─[\[\e[0m\]\[\e[1;37m\]\$\[\e[0m\]\[\e[0;36m\]]› \[\e[0m\]"

# = From oh-my-zsh =
alias l="ls -lFh" #size,show type,human readable
alias la="ls -lAFh" #long list,show almost all,show type,human readable
alias lr="ls -tRFh" #sorted by date,recursive,show type,human readable
alias lt="ls -ltFh" #long list,sorted by date,show type,human readable
alias ll="ls -l" #long list
alias ldot="ls -ld .*"
alias lS="ls -1FSsh"
alias lart="ls -1Fcart"
alias lrt="ls -1Fcrt"

# Adding colours
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Installing global GEM modules in home
export GEM_HOME=$HOME/gems
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export PATH="$GEM_HOME/bin:$PATH"

# Installing global NPM modules in home
npm config set prefix $HOME/.npm
export PATH=$HOME/.npm/bin:$PATH

# Set editor to emacs
export EDITOR=/usr/bin/emacs
export VISUAL=/usr/bin/emacs

# get external IP address
alias myip="curl ifconfig.me"

# Dangerous
alias rmrf="trash -rfv"

# Safer rm
alias t=trash

# Install a package via AUR
alias aursh="bash <(curl aur.sh) -si"
