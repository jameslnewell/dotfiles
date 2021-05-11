#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=brew

print_section_header $section_name

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
print_section_setup_complete

print_section_footer $section_name 

