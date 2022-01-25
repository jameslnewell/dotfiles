#!/usr/bin/env bash

source ./utilities/boot.sh
source ./utilities/ui.sh

section_name=shell

print_section_header $section_name

fonts https://github.com/ryanoasis/nerd-fonts/releases

brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# configure as the default shell (tho should already be)
zsh_path="$(which zsh)"
echo "$zsh_path" | sudo tee -a /etc/shells
chsh -s "$zsh_path"

mkdir -p ~/.config/zsh/conf.d

# install prompt
brew install starship
# cp ./files/.config/zsh/conf.d/starship.fish ~/.config/fish/conf.d/starship.fish

print_section_setup_complete

print_section_footer $section_name 
