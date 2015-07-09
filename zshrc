##############################################################################
# oh-my-zsh setup
##############################################################################

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in $ZSH/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

#export ZSH_THEME="af-magic"
#export ZSH_THEME="amuse"
#export ZSH_THEME="awesomepanda"
#export ZSH_THEME="bira"
#export ZSH_THEME="candy-kingdom"
#export ZSH_THEME="cloud"
export ZSH_THEME="crunch"
#export ZSH_THEME="eastwood"
#export ZSH_THEME="dpoggi"
#export ZSH_THEME="gozilla"
#export ZSH_THEME="fino"
#export ZSH_THEME="takashiyoshida"
#export ZSH_THEME="random"
#export ZSH_THEME="jnrowe"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="false"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
plugins=(git battery brew osx gradle ant compleat dirpersist gem cloudapp ruby textmate sublime atom)

source $ZSH/oh-my-zsh.sh

##############################################################################
# Boxen setup
##############################################################################
#source /opt/boxen/env.sh
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
