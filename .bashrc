#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# --- MY CUSTOMISATIONS---

# Ubuntu 14.04 docker package
# alias docker='docker.io'

# Local NPM installs
# export PATH=$HOME/npm/bin:$PATH

# Local gem installs
# export GEM_HOME=~/gems

# Running emacs in console
# alias emacs='emacs -nw'
# Using emacs-nox package instead

# Custom bash prompt via kirsle.net/wizards/ps1.html
# Rainbow
# [user@host ~]$ ls
# export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Weird test
# ┌─[user @ host]─[~]─[1819]
# └─[$]› ls

export PS1="\n\[\e[0;36m\]┌─[\[\e[0m\]\[\e[1;33m\]\u\[\e[0m\]\[\e[1;36m\] @ \[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[0;36m\]]─[\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\[\e[0;36m\]]\[\e[0;36m\]─[\[\e[0m\]\[\e[0;31m\]\!\[\e[0m\]\[\e[0;36m\]]\[\e[0m\]\n\[\e[0;36m\]└─[\[\e[0m\]\[\e[1;37m\]\$\[\e[0m\]\[\e[0;36m\]]› \[\e[0m\]"

# https://wiki.archlinux.org/index.php/Ruby#RubyGems
PATH="`ruby -rubygems -e 'puts Gem.user_dir'`/bin:$PATH"

# easy-mode
# export EDITOR=nano

# medium-mode
# Yes, I am finally more comfortable with it! :-)
export EDITOR=emacs

# ls shortcut
alias ll="ls -lh"
alias lll="ls -lh --sort=size"

# get external IP address
alias myip="curl ifconfig.me"

# Dangerous
alias rmrf="rm -rfv"

# Install a package via AUR
alias aursh="bash <(curl aur.sh) -si"


# Below are from Ubuntu distribution {{{
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# }}}
