source scripts/utils.sh

install_iterm2() {
  brew install --cask iterm2
}

install_fish() {
  brew install --cask font-fira-code
}

install_starship() {
  brew install starship
}

install_font() {
  brew install --cask font-fira-code
}

main() {
  install_iterm2
  install_fish
  install_font
}

blue_color
echo "Changing the default shell"
reset_color
echo "$(command -v fish)" | sudo tee -a /etc/shells
chsh -s "$(command -v fish)"

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
fisher install franciscolourenco/done

main
