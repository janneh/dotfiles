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

# Go
export GOPATH=$HOME/go

# Path
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin # Postgres App
export PATH=$PATH:$HOME/wildfly/current/bin # Wildfly
export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:/usr/local/bin/yarn
export PATH=$PATH:/Users/jannelonn/miniconda3/bin


source ~/.aliases &>/dev/null
source ~/.env &>/dev/null

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jannelonn/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/jannelonn/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jannelonn/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/jannelonn/google-cloud-sdk/completion.zsh.inc'; fi

# deafault to java 11
use_java11

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jannelonn/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jannelonn/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jannelonn/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jannelonn/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
conda deactivate
# <<< conda initialize <<<

