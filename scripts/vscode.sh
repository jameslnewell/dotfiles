#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=vscode

app_path="/Applications/Visual Studio Code.app"

print_section_header $section_name

sudo xcode-select --install

print_section_setup_complete

print_section_footer $section_name 
