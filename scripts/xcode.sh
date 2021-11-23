#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=vscode

print_section_header $section_name

# install xcode
brew install mas
mas install 497799835

# accept command line tools license agreement
xcodebuild -license accept
# xcode-select --install

print_section_setup_complete

print_section_footer $section_name 
