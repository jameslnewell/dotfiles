
press_any_key_to_continue() {
  read -p "Press any key to contine." -n 1
}

# Prompts the user to answer a question with either y or n
prompt() {
  local message=$1
  while true; do
      echo ""
      read -p "$message " yn
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

print_section_header() {
  local section_name=$1
  echo ""
  echo "$section_name"
  echo "---"
}

print_section_setup_complete() {
  echo ""
  echo "Setup complete."
}

print_section_footer() {
  # noop
  echo ""
}
