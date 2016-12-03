#! /bin/bash
DOTFILES="bashrc bash_profile inputrc tmux.conf vimrc vim zshrc gitconfig phoenix.js"
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for DOTFILE in $DOTFILES; do
  rm -f ~/.$DOTFILE
  ln -s $DOTFILES_DIR/.$DOTFILE ~/.$DOTFILE
done
