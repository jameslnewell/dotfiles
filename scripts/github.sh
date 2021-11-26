#!/usr/bin/env bash

# shellcheck source=../utilities/__.sh
source ./utilities/__.sh

script_name=github

is_not_setup() {
  if [[ -f ~/.ssh/conf.d/github || -h ~/.ssh/conf.d/github || -f ~/.ssh/github_id_rsa ]]; then
    return 1
  else 
    return 0
  fi
}

setup() {
  ln -sf "$(pwd)/files/.ssh/conf.d/github" ~/.ssh/conf.d/github
  echo -e 'y\n' | ssh-keygen -t rsa -b 4096 -C "$user_email" -N "" -f ~/.ssh/github_id_rsa -q

  pbcopy < ~/.ssh/github_id_rsa.pub
  echo ""
  echo "The public key has been copied to the clipboard. Please paste it into Github."
  open https://github.com/settings/keys
  press_any_key_to_continue
}

print_script_header $script_name

if is_not_setup || prompt_overwrite_existing_setup; then
  setup
  print_script_setup
fi

print_script_footer $script_name 

