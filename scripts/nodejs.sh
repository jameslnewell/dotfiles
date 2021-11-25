#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=node

print_section_header $section_name

# install fnm
brew install fnm
cp ./files/.config/fish/conf.d/fnm.fish ~/.config/fish/conf.d/fnm.fish
source ~/.config/fish/config.fish

# install node
fnm install 16
fnm default 16

# install yarn
brew install yarn

print_section_setup_complete

print_section_footer $section_name 

