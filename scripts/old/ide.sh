source scripts/utils.sh

install_visual_studio_code() {
  brew install --cask visual-studio-code
}

install_font() {
  brew install --cask font-fira-code
}

main() {
  install_visual_studio_code
  install_font
}
