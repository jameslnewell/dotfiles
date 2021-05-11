#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=os

print_section_header $section_name

# remove unnecessary dock icons
brew install dockutil
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

print_section_setup_complete

print_section_footer $section_name 
