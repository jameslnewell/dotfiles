#!/usr/bin/env bash

# shellcheck source=../utilities/__.sh
source ./utilities/__.sh

script_name=vscode

print_script_header $script_name

# install xcode
brew install mas
mas install 497799835

# accept command line tools license agreement
sudo xcodebuild -license accept
# xcode-select --install

print_script_setup

print_script_footer $script_name 
