#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=shell

print_section_header $section_name

brew install fish

# configure as the default shell
fish_path="$(which fish)"
echo $fish_path | sudo tee -a /etc/shells
chsh -s $fish_path

mkdir -p ~/.config/fish/conf.d

# install prompt
brew install starship

# TODO: change to links
cp ./files/.config/fish/conf.d/starship.fish ~/.config/fish/conf.d/starship.fish
cp ./files/.config/fish/conf.d/brew.fish ~/.config/fish/conf.d/brew.fish
cp ./files/.config/fish/conf.d/vscode.fish ~/.config/fish/conf.d/vscode.fish
ln -sf $(pwd)/files/.config/starship.toml ~/.config/starship.toml

print_section_setup_complete

print_section_footer $section_name 
