#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=shell

print_section_header $section_name

brew install fish

fish_path="$(which fish)"
echo $fish_path | sudo tee -a /etc/shells
chsh -s $fish_path

print_section_setup_complete

print_section_footer $section_name 
