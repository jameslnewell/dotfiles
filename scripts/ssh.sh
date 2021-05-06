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
  mkdir -p ~/.ssh
  mkdir -p ~/.ssh/config.d
  ln -sf $(pwd)/configs/.ssh/config ~/.ssh/config

  chmod 700 ~/.ssh
  chmod 700 ~/.ssh/config.d
  chmod 600 ~/.ssh/config
}

print_section_header $section_name

if is_not_setup || prompt_overwrite_existing_setup; then
  setup
  print_section_setup_complete
fi

print_section_footer $section_name 

