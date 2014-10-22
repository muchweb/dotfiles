# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="muchweb"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(web-search git pacman cake common-aliases docker npm svn sudo systemd)

source $ZSH/oh-my-zsh.sh

# = Cheat sheet =
# alias l='ls -lFh' #size,show type,human readable
# alias la='ls -lAFh' #long list,show almost all,show type,human readable
# alias lr='ls -tRFh' #sorted by date,recursive,show type,human readable
# alias lt='ls -ltFh' #long list,sorted by date,show type,human readable
# alias ll='ls -l' #long list
# alias ldot='ls -ld .*'
# alias lS='ls -1FSsh'
# alias lart='ls -1Fcart'
# alias lrt='ls -1Fcrt'

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
