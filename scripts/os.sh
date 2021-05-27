#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=os

print_section_header $section_name

# remove unnecessary dock icons
brew install dockutil
dockutil --remove 'Launchpad'
dockutil --remove 'Messages'
dockutil --remove 'Mail'
dockutil --remove 'Maps'
dockutil --remove 'Photos'
dockutil --remove 'FaceTime'
dockutil --remove 'Calendar'
dockutil --remove 'Contacts'
dockutil --remove 'Reminders'
dockutil --remove 'Notes'
dockutil --remove 'TV'
dockutil --remove 'Music'
dockutil --remove 'Podcasts'
dockutil --remove 'News'
dockutil --remove 'Keynote'
dockutil --remove 'Numbers'
dockutil --remove 'Pages'
dockutil --remove 'App Store'

# automatically hide and show the Dock
defaults write com.apple.dock autohide -int 1

# make fn keys as standard keys instead of media
defaults write -g com.apple.keyboard.fnState -int 1

# enable automatic updates
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -int 1

# enable right click
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode TwoButton

# enable developer menu in safari
defaults write com.apple.Safari WebKitDeveloperExtras -bool true 

print_section_setup_complete

print_section_footer $section_name 
