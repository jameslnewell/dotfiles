#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=vscode

print_section_header $section_name

if [ ! -d "/Applications/Visual Studio Code.app" ]; then
  brew install --cask visual-studio-code
fi

brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# install CLI
cp ./configs/.config/fish/conf.d/vscode.fish ~/.config/fish/conf.d/vscode.fish

# install extensions
code --install-extension editorconfig.editorconfig --force
code --install-extension dracula-theme.theme-dracula --force
code --install-extension dbaeumer.vscode-eslint --force
code --install-extension jpoissonnier.vscode-styled-components --force
code --install-extension ms-azuretools.vscode-docker --force
code --install-extension mikestead.dotenv --force
code --install-extension vscodevim.vim --force

# configure vscode
ln -sf $(pwd)/configs/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf $(pwd)/configs/Library/Application\ Support/Code/User/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

print_section_setup_complete

print_section_footer $section_name 