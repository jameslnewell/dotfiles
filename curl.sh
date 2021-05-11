#!/usr/bin/env bash

set -e

repo_directory=~/code/jameslnewell/dotfiles

if [[ -d $repo_directory ]]; then 
  cd $repo_directory
  git checkout main
  git pull
else 
  mkdir -p $repo_directory
  git clone https://github.com/jameslnewell/dotfiles.git $repo_directory 
  cd $repo_directory 
  # Swap HTTP to SSH for easier authentication
  git remote set-url origin git@github.com:jameslnewell/dotfiles.git
fi

$repo_directory/main.sh
