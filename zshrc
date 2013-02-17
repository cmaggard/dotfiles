# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails3 rbenv brew heroku osx pow ruby)

zstyle ':completion:*:*:git:*' script /usr/local/etc/bash_completion.d/git-completion.bash
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
export PATH=$HOME/bin:$HOME/.rbenv/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/share/python:/Users/cmaggard/.rbenv/shims:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

eval "$(rbenv init - zsh)"

export GIT_PS1_SHOWUPSTREAM="auto"

alias r="rails"
alias start="rails server --debugger"
alias cuke="cucumber"
alias hcp="heroku run console --remote production"
alias hcs="heroku run console --remote staging"
alias vim="mvim -v"
alias vimdiff="mvim -dv"
alias gems="yard server --gems"


source ~/.dotfiles/work
source ~/.dotfiles/secure

export SHELL=/usr/local/bin/zsh
export EDITOR="/usr/local/bin/mvim -v"
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Fix some zsh quirks and SED IS AWESOME
alias sed="noglob sed"
