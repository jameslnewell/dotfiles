#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=node

print_section_header $section_name

# install nvm
brew install fnm
cp ./configs/.config/fish/conf.d/fnm.fish ~/.config/fish/conf.d/fnm.fish

# install node
fnm install 14
fnm default 14

# install yarn
npm -g install yarn

print_section_setup_complete

print_section_footer $section_name 

