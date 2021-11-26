#!/usr/bin/env bash

press_any_key_to_continue() {
  read -rp "Press any key to contine." -n 1
}

# Prompts the user to answer a question with either y or n
prompt() {
  local message=$1
  while true; do
      echo ""
      read -rp "$message " yn
      case $yn in
          [Yy]* ) return 0; break;;
          [Nn]* ) return 1; break;;
          * ) echo "Answer yes (y) or no (n).";;
      esac
  done
}

prompt_overwrite_existing_setup() {
  echo ""
  prompt "Overwrite the existing setup?"
}

print_script_header() {
  echo ""
  echo "$script_name"
  echo "---"
}

print_script_setup() {
  echo ""
  echo "Setup complete."
}

print_script_footer() {
  # noop
  echo ""
}
