#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=brew

is_not_setup() {
  return 0
}

setup() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

print_section_header $section_name

if is_not_setup || prompt_overwrite_existing_setup; then
  setup
  print_section_setup_complete
fi

print_section_footer $section_name 

