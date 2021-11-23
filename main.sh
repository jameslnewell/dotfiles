#!/usr/bin/env bash

cd "$(dirname "$0")"

source ./utilities/boot.sh

sudo -v

./scripts/brew.sh
./scripts/xcode.sh
./scripts/os.sh
./scripts/1password.sh
# needed to login to github and upload SSH
./scripts/ssh.sh
./scripts/git.sh
./scripts/github.sh
./scripts/shell.sh
./scripts/terminal.sh
./scripts/nodejs.sh
./scripts/vscode.sh
./scripts/apps.sh
