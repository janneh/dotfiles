# jannes zshrc
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="refined"
DEFAULT_USER="janne"

# Plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git ssh-agent utility tmux syntax-highlight history osx ruby rails brew) 

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"

# Use brew installed vim
export EDITOR=/usr/local/bin/vim

# NVM
export NVM_DIR=~/.nvm
source "/usr/local/opt/nvm/nvm.sh"

# rbenv
eval "$(rbenv init -)"

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Go
export GOPATH=$HOME/go

# Path
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin # Postgres App
export PATH=$PATH:$HOME/wildfly/current/bin # Wildfly
export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:/usr/local/bin/yarn

source ~/.aliases &>/dev/null
source ~/.env &>/dev/null
