#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=node

print_section_header $section_name

brew install fnm
cp ./configs/.config/fish/conf.d/fnm.fish ~/.config/fish/conf.d/fnm.fish

brew install --cask 1password
print_section_setup_complete

print_section_footer $section_name 

