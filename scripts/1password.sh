#!/usr/bin/env bash

# shellcheck source=../utilities/__.sh
source ./utilities/__.sh

script_name=1password

print_script_header $script_name

brew install --cask 1password
print_script_setup

print_script_footer $script_name 

