#! /bin/bash
DOTFILES="bashrc inputrc tmux-conf vimrc vim zshrc gitconfig"
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for DOTFILE in $DOTFILES; do
  rm -f ~/.$DOTFILE
  ln -s $DOTFILES_DIR/.$DOTFILE ~/.$DOTFILE
done
