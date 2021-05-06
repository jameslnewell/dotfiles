source scripts/utils.sh

install_brew() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew update
  brew upgrade
}

main() {
  install_brew
}
