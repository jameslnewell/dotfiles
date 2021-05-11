#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=vscode

print_section_header $section_name

if [ ! -d "/Applications/Visual Studio Code.app" ]; then
  brew install --cask visual-studio-code
fi

# install CLI
cp ./configs/.config/fish/conf.d/vscode.fish ~/.config/fish/conf.d/vscode.fish

code --install-extension editorconfig.editorconfig --force
code --install-extension dracula-theme.theme-dracula --force
code --install-extension dbaeumer.vscode-eslint --force
code --install-extension jpoissonnier.vscode-styled-components --force
code --install-extension ms-azuretools.vscode-docker --force
code --install-extension mikestead.dotenv --force
code --install-extension vscodevim.vim --force

print_section_setup_complete

print_section_footer $section_name 
