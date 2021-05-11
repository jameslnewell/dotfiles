#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=1password

print_section_header $section_name

brew install --cask 1password
print_section_setup_complete

print_section_footer $section_name 

