#!/usr/bin/env bash

# shellcheck source=../utilities/__.sh
source ./utilities/__.sh

script_name=vscode

app_path="/Applications/Visual Studio Code.app"

print_script_header $script_name

if [ ! -d app_path ]; then
  brew install --cask visual-studio-code
fi

# TODO: handle failure if already installed
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# install extensions
code --install-extension editorconfig.editorconfig --force
code --install-extension dracula-theme.theme-dracula --force
code --install-extension dbaeumer.vscode-eslint --force
code --install-extension jpoissonnier.vscode-styled-components --force
code --install-extension ms-azuretools.vscode-docker --force
code --install-extension mikestead.dotenv --force
code --install-extension vscodevim.vim --force
code --install-extension bmalehorn.vscode-fish --force

# configure vscode
ln -sf $(pwd)/files/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf $(pwd)/files/Library/Application\ Support/Code/User/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# add dock icon
brew install dockutil
dockutil --add "$app_path"

print_script_setup

print_script_footer $script_name 
