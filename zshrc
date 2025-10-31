##############################################################################
# oh-my-zsh setup
##############################################################################

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in $ZSH/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.    

export ZSH_THEME="vlatombe"

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
          compleat \
          direnv \
          docker \
          gpg-agent \
          git \
          git-prompt \
          gradle \
          helm \
          kops \
          kubectl \
          kube-ps1 \
          mvn \
          ssh-agent \
          terraform \
          zoxide \
          )
# Add completions from homebrew
if type brew &>/dev/null; then
    fpath+="$(brew --prefix)/share/zsh/site-functions"
fi
# cf. https://github.com/zsh-users/zsh-completions/issues/603
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# Remove aliases defined in directories.zsh
zstyle ':omz:lib:*' aliases no
#zstyle ':omz:lib:directories' aliases no

source $ZSH/oh-my-zsh.sh

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/vlatombe/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

