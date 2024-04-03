#!/usr/bin/env bash

readonly GIT_PATH=https://github.com/kaznag/dotfiles.git
readonly DOT_DOTFILES=".dotfiles"

CURRENT=$(pwd)

trap finally EXIT

finally() {
  echo "end"
  cd "$CURRENT" || exit
}

cd "$HOME" || exit

if [ ! -d "$HOME/$DOT_DOTFILES" ]; then
    git clone $GIT_PATH "$HOME/$DOT_DOTFILES"
fi
