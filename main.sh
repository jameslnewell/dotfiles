#!/usr/bin/env bash

cd "$(dirname "$0")"

source ./utilities/boot.sh

./scripts/ssh.sh
./scripts/git.sh
./scripts/github.sh
./scripts/brew.sh
