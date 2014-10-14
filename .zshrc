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

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/vendor_perl:/usr/bin/core_perl"

# Installing global GEM modules in home
export GEM_HOME=$HOME/gems
export GEM_PATH=$HOME/gems:$GEM_PATH
export PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"

# Installing global NPM modules in home
npm config set prefix $HOME/.npm
export PATH=$HOME/.npm/bin:$PATH

# Set editor to emacs
export EDITOR=/usr/bin/emacs
export VISUAL=/usr/bin/emacs
