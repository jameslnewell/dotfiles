#!/usr/bin/env bash

# shellcheck source=../utilities/__.sh
source ./utilities/__.sh

script_name=git

is_not_setup() {
  if [[ -f ~/.gitconfig || -h ~/.gitconfig || -f ~/.gitignore || -h ~/.gitignore ]]; then
    return 1
  else 
    return 0
  fi
}

setup() {
  ln -sf "$(pwd)/files/.gitconfig" ~/.gitconfig
  ln -sf "$(pwd)/files/.gitignore" ~/.gitignore
}

print_script_header $script_name

if is_not_setup || prompt_overwrite_existing_setup; then
  setup
  print_script_setup
fi

print_script_footer $script_name 

