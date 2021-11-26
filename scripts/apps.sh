#!/usr/bin/env bash

# shellcheck source=../utilities/__.sh
source ./utilities/__.sh

brew install dockutil

brew install --cask google-chrome
# TODO: continue on failure 👇
dockutil --add "/Applications/Google Chrome.app"

brew install --cask slack
# TODO: continue on failure 👇
dockutil --add "/Applications/Slack.app"

brew install --cask spotify

brew install --cask docker

brew install --cask notion

echo "Please sign into the App Store"
press_any_key_to_continue

# install Moom
brew install mas
mas install 419330170

# defaults export com.manytricks.Moom ~/Desktop/Moom.plist
# defaults import com.manytricks.Moom ~/Desktop/Moom.plist
