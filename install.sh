#!/usr/bin/env bash

# Exit whole script if interrupt or termination signals from any invoked command.
trap "{ echo Existing... ; exit; }" SIGINT SIGTERM

# Prepare Xcode Command Line Tools which includes `git` and `make`
if ! xcode-select -p > /dev/null 2>&1; then
  echo "Installing Xcode Command Line Tools..."
  sudo softwareupdate -i -a
  xcode-select --install
else
  echo "Xcode Command Line Tools already installed."
fi

# Install dotfiles using `git`
SOURCE="https://github.com/jozhan/dotfiles.git"
TARGET="$HOME/.dotfiles"

# Check if `git` command exists
if type "git" > /dev/null 2>&1; then
  CMD="git clone $SOURCE $TARGET"
fi

if [ -z "$CMD" ]; then
  echo "Git is not installed successfully. Aborting..."
else
  echo "Installing dotfiles..."
  mkdir -p "$TARGET"
  eval "$CMD"
fi