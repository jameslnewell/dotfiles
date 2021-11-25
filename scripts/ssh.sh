#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=ssh

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

print_section_header $section_name

if is_not_setup || prompt_overwrite_existing_setup; then
  setup
  print_section_setup_complete
fi

print_section_footer $section_name 

