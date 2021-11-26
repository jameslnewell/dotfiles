#!/usr/bin/env bash

# shellcheck source=../utilities/__.sh
source ./utilities/__.sh

script_name=brew

is_not_setup() {
  ! brew -v
}

setup() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

print_script_header $script_name

if is_not_setup || prompt_overwrite_existing_setup; then
  setup
  print_script_setup
fi

print_script_footer $script_name 

