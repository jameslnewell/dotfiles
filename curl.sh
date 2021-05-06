#!/usr/bin/env bash

source ./utilities/boot.sh

repo_directory=~/code/jameslnewell/dotfiles

mkdir -p $repo_directory
git clone https://github.com/jameslnewell/dotfiles.git $repo_directory 

$repo_directory/main.sh

# Swap HTTP to SSH for easier authentication
git remote set-url origin git@github.com:jameslnewell/dotfiles.git
