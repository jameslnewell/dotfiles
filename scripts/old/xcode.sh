#!/usr/bin/env bash
source scripts/utils.sh

is_xcode_installed() {
  # check the file exists
  [ -d "/Applications/Xcode.app" ]
}

install_xcode() {
  brew install mas
  mas install 497799835
}

is_command_line_tools_installed() {
  xcode-select --print-path &> /dev/null
}

install_command_line_tools() {
  echo $(is_command_line_tools_installed)
  if ! is_command_line_tools_installed ]; then
    blue_color
    echo "Installing Command Line Tools"
    reset_color

    xcode-select --install
      echo $?
    until is_command_line_tools_installed; do \
      sleep 5; \
    done

    blue_color
    echo "Installed Command Line Tools"
    reset_color
  fi
}

main() {
  install_xcode
  install_command_line_tools
}

main
