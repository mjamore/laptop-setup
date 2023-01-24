#!/usr/bin/env bash

# Set git configuration
git config --global user.name "Michael Amore"
git config --global user.email "michael.amore@coxautoinc.com"
git config --global core.editor "code --wait"

# faster git server communication.
# like a LOT faster. https://opensource.googleblog.com/2018/05/introducing-git-protocol-version-2.html
git config protocol.version 2

# autocompletion for git branch names https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks
brew install bash-completion

## Use 'main' as the default branch name
git config --global init.defaultBranch main

## Use SSH instead of HTTPS
git config --global url."ssh://git@github.com".insteadOf "https://github.com" || true