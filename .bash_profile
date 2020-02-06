if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Add anything machine specific below
# Like sourcing a special set of aliases or whatevs

# added by Miniconda3 installer
# export PATH="/Users/jannelonn/miniconda3/bin:$PATH"  # commented out by conda initialize

# added by Miniconda3 installer
# export PATH="/Users/jannelonn/miniconda3/bin:$PATH"  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jannelonn/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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
# <<< conda initialize <<<
