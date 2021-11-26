#!/usr/bin/env bash

# shellcheck source=../utilities/__.sh
source ./utilities/__.sh

script_name=terminal

print_script_header $script_name

brew install --cask iterm2
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font

# install the theme for iTerm
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string $(pwd)/files/iterm2
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true

# add dock icon
brew install dockutil
dockutil --add /Applications/iTerm.app

print_script_setup

print_script_footer $script_name 
