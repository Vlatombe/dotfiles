##############################################################################
# oh-my-zsh setup
##############################################################################

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in $ZSH/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

export ZSH_THEME="crunch"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="false"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
plugins=( \
          ant \
          atom \
          chucknorris \
          compleat \
          dirpersist \
          docker \
          gpg-agent \
          git \
          git-prompt \
          gradle \
          helm \
          kops \
          kubectl \
          kube-ps1\
          mvn \
          osx \
          ssh-agent \
          terraform \
          z \
          )

source $ZSH/oh-my-zsh.sh

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# Jenv
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Source chtf
if [[ -f /usr/local/share/chtf/chtf.sh ]]; then
    source "/usr/local/share/chtf/chtf.sh"
fi
chtf 0.11.2

# Source kubectl switcher
if [[ -f /usr/local/opt/chk/share/chk/chk.sh ]]; then
    source "/usr/local/opt/chk/share/chk/chk.sh"
fi
chk 1.14.7

source ~/.shinobi-config
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source ~/Projects/Cloudbees/support-shinobi-tools/lib/shinobi_bash_completion.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
#chuck
