#
# fpath
#

# From `brew install zsh-completions`
# or `brew info zsh-completions`
fpath=(/usr/local/share/zsh-completions $fpath)

# From `brew install zsh-history-substring-search`
# or `brew info zsh-history-substring-search`
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# From `brew install zsh-autosuggestions`
# or `brew info zsh-autosuggestions`
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#
# Prompt theme - Pure
# https://github.com/sindresorhus/pure
#
autoload -U promptinit
promptinit

zstyle :prompt:pure:path color cyan

prompt pure

#
# Word style: directory delimiter
# http://stackoverflow.com/a/1438523
#
autoload -U select-word-style
select-word-style bash

#
# Completion
#

# possibly needed: rm -f ~/.zcompdump; compinit
autoload -U compinit
compinit

# case insensitive (all), partial-word and substring completion
# https://github.com/robbyrussell/oh-my-zsh/blob/e8aba1bf5912f89f408eaebd1bc74c25ba32a62c/lib/completion.zsh#L23
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# Menu selection
# http://www.masterzen.fr/2009/04/19/in-love-with-zsh-part-one/
# Highlight
zstyle ':completion:*' menu select
# Tag name as group name
zstyle ':completion:*' group-name ''
# Format group names
zstyle ':completion:*' format '%B---- %d%b'

# history-search on up and down
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Delete Git's official completions to allow Zsh's official Git completions to work.
# Git ships with really bad Zsh completions. Zsh provides its own completions
# for Git, and they are much better.
# https://github.com/Homebrew/homebrew-core/issues/33275#issuecomment-432528793
# https://twitter.com/OliverJAsh/status/1068483170578964480
# Unfortunately it's not possible to install Git without completions (since
# https://github.com/Homebrew/homebrew-core/commit/f710a1395f44224e4bcc3518ee9c13a0dc850be1#r30588883),
# so in order to use Zsh's own completions, we must delete Git's completions.
# This is also necessary for hub's Zsh completions to work:
# https://github.com/github/hub/issues/1956.
function () {
  GIT_ZSH_COMPLETIONS_FILE_PATH="$(brew --prefix)/share/zsh/site-functions/_git"
  if [ -f $GIT_ZSH_COMPLETIONS_FILE_PATH ]
  then
  rm $GIT_ZSH_COMPLETIONS_FILE_PATH
  fi
}

#
# zsh-history-substring-search
#

#
# History
# https://kevinjalbert.com/more-shell-history/
# https://unix.stackexchange.com/a/273863
#

# How many we load (?)
export HISTSIZE=100000
# How many we can hold (?)
export SAVEHIST=$HISTSIZE
# History won't be saved without the following command
# This isn't set by default.
export HISTFILE="$HOME/.zsh_history"

# Do not display a line previously found.
setopt HIST_FIND_NO_DUPS
# Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_ALL_DUPS
# Write to the history file immediately, not when the shell exits.
setopt INC_APPEND_HISTORY
# Share history between all sessions.
setopt SHARE_HISTORY

#
# environment variables
#

# export NPM_TOKEN=$(cat ~/.npmrc | sed s/^.*=//)
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
# Use brew installed vim
export EDITOR=/usr/local/bin/vim

#
# aliases
#

alias dc=docker-compose
alias use_java8='export JAVA_HOME=$JAVA_8_HOME'
alias use_java11='export JAVA_HOME=$JAVA_11_HOME'

# deafault to java 11
use_java11

#
# additonal setup
#

source ~/.extra

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.zsh.inc' ]; then source '~/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then source '~/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/miniconda3/etc/profile.d/conda.sh" ]; then
        source "/usr/local/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
conda deactivate

## NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
