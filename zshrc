# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cody"

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
plugins=(rbenv git brew heroku osx pow ruby docker)


#zstyle ':completion:*:*:git:*' script /usr/local/etc/bash_completion.d/git-completion.bash
#zstyle ':completion:*:*:git:*' script /usr/local/etc/zsh/site-functions/_git/.git-completion.sh
#fpath=(/usr/local/etc/zsh/site-functions $fpath)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
# export GOROOT=/usr/local/Cellar/go/1.2rc4
export GOVERSION=1.2
export GOROOT=/usr/local/Cellar/go/$GOVERSION/libexec
export GOPATH=$HOME/.go/$GOVERSION

export PATH=$HOME/bin:$GOPATH/bin:$GOROOT/bin:/usr/local/heroku/bin:$HOME/.rbenv/bin:/usr/local/bin
export PATH=$PATH:/Users/cmaggard/.rbenv/shims:/usr/local/share/npm/bin
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin
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
alias be="bundle exec"
alias wget="curl -O --retry 999 --retry-max-time 0 -C -"


# the_silver_searcher has been replaced by the_platinum_searcher
alias ag="pt"

[[ -s ~/.dotfiles/work ]] && source ~/.dotfiles/work
[[ -s ~/.dotfiles/secure ]] && source ~/.dotfiles/secure
[[ -s ~/.dotfiles/home ]] && source ~/.dotfiles/home

export SHELL=/usr/local/bin/zsh
export EDITOR="/usr/local/bin/mvim -v"
#[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Fix some zsh quirks and SED IS AWESOME
alias sed="noglob sed"
alias bower='noglob bower'

export ANSIBLE_HOSTS=~/.ansible_hosts
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

# Docker setup
$(boot2docker shellinit)

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
