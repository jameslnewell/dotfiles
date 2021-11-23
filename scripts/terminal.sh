#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=terminal

print_section_header $section_name

brew install --cask iterm2
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font

# install the theme for iTerm
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string $(pwd)/configs/iterm2
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true

# add dock icon
brew install dockutil
dockutil --add /Applications/iTerm.app

print_section_setup_complete

print_section_footer $section_name 
