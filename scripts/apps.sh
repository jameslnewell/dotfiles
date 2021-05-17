#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh
source ./utilities/data.sh

brew install dockutil

brew install --cask google-chrome
dockutil --add "/Applications/Google Chrome.app"

brew install --cask slack
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
