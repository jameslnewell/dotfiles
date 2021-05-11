#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=shell

print_section_header $section_name

brew install fish

# configure as the default shell
fish_path="$(which fish)"
echo $fish_path | sudo tee -a /etc/shells
chsh -s $fish_path

# install prompt
brew install starship
cp ./configs/.config/fish/conf.d/starship.fish ~/.config/fish/conf.d/starship.fish

print_section_setup_complete

print_section_footer $section_name 
