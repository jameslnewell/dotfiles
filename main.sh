#!/usr/bin/env bash

cd "$(dirname "$0")"

source ./utilities/boot.sh

sudo -v

# needed to install brew
./scripts/xcode.sh
./scripts/brew.sh
./scripts/os.sh
# needed to login to github and upload SSH
./scripts/1password.sh
./scripts/ssh.sh
./scripts/git.sh
./scripts/github.sh
./scripts/shell.sh
./scripts/terminal.sh
./scripts/nodejs.sh
./scripts/vscode.sh
./scripts/apps.sh
