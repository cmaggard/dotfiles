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
plugins=(rbenv gitfast brew heroku osx pow ruby docker)


#zstyle ':completion:*:*:git:*' script /usr/local/etc/bash_completion.d/git-completion.bash
#zstyle ':completion:*:*:git:*' script /usr/local/etc/zsh/site-functions/_git/.git-completion.sh
#fpath=(/usr/local/etc/zsh/site-functions $fpath)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all


export PATH=$HOME/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init - zsh)"

export PATH="$PATH:/opt/yarn-[version]/bin"
export PATH="$PATH:`yarn global bin`"


export GIT_PS1_SHOWUPSTREAM="auto"

alias r="rails"
alias vim="mvim -v"
alias vimdiff="mvim -dv"
alias be="bundle exec"
alias dce="docker-compose exec"

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
alias jq='noglob jq'

export ANSIBLE_HOSTS=~/.ansible_hosts
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
