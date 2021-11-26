#!/usr/bin/env bash

# shellcheck source=../utilities/__.sh
source ./utilities/__.sh

script_name=node

print_script_header $script_name

# install fnm
brew install fnm
cp ./files/.config/fish/conf.d/fnm.fish ~/.config/fish/conf.d/fnm.fish
source ~/.config/fish/config.fish

# install node
fnm install 16
fnm default 16

# install yarn
brew install yarn

print_script_setup

print_script_footer $script_name 

