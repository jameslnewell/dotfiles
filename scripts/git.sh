#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=git

is_not_setup() {
  if [[ -f ~/.gitconfig || -h ~/.gitconfig || -f ~/.gitignore || -h ~/.gitignore ]]; then
    return 1
  else 
    return 0
  fi
}

setup() {
  ln -sf $(pwd)/configs/.gitconfig ~/.gitconfig
  ln -sf $(pwd)/configs/.gitignore ~/.gitignore
}

print_section_header $section_name

if is_not_setup || prompt_overwrite_existing_setup; then
  setup
  print_section_setup_complete
fi

print_section_footer $section_name 

