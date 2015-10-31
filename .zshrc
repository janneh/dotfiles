# jannes zshrc
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="gianu"
DEFAULT_USER="janne"

# Plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git utility tmux syntax-highlight history osx ruby rails brew)

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"


export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin # Postgres App
export PATH=$PATH:$HOME/wildfly/current/bin # Wildfly
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting