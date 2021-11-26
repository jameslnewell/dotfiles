#!/usr/bin/env bash

# shellcheck source=../utilities/__.sh
source ./utilities/__.sh

script_name=ssh

is_not_setup() {
  if [[ -f ~/.ssh/config || -h ~/.ssh/config ]]; then
    return 1
  else 
    return 0
  fi
}

setup() {
  # create the SSH directory and include any files
  mkdir -p ~/.ssh
  chmod 700 ~/.ssh
  mkdir -p ~/.ssh/conf.d
  chmod 700 ~/.ssh/conf.d
  ln -sf "$(pwd)/files/.ssh/config" ~/.ssh/config
  chmod 600 ~/.ssh/config
}

print_script_header $script_name

if is_not_setup || prompt_overwrite_existing_setup; then
  setup
  print_script_setup
fi

print_script_footer $script_name 

