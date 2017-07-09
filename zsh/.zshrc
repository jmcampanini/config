# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/jcampanini/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# case-insensitive auto-complete
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# -------
# Aliases
# -------

# Gradle
alias gw='./gradlew --parallel --daemon --stacktrace --profile'
alias gwi='gw cleanIdea idea'
alias gwii='gwi && ii'
alias gwe='gw cleanEclipse eclipse'
alias gwbi='gw clean build cleanIdea idea'
alias gwbii='gwbi && ii'

# Random
alias ll='ls -alh'
alias ii='idea *.ipr'

# Git
alias gc='git clean -xfd && git clean -Xfd'
alias gcod='git checkout develop'
alias gcob='git checkout -b'
alias god='git fetch --prune && gcod && git reset --hard origin/develop'

# Docker
alias dc='docker-compose'
alias drm='docker rm -f $(docker ps -a -q)'
alias drmi='docker rmi -f $(docker images -q)'
alias dnrm='docker network rm $(docker network ls -q)'

# Go
export GOROOT=/usr/local/Cellar/go/1.8.3/libexec
export GOPATH=~/Code/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
