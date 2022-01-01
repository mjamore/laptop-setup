#!/usr/bin/env bash
# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# (Optionally) Turn off brew's analytics https://docs.brew.sh/Analytics
brew analytics off

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install latest version of bash
brew install bash

# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils

# Install Chrome
brew install --cask google-chrome

# Install Firefox
brew install --cask firefox

# Install VSCode
brew install --cask visual-studio-code

# Install Slack
brew install --cask slack

# Install Discord
brew install --cask discord

# Install Git
brew install git
# better diffs - https://github.com/dandavison/delta
brew install git-delta

# Install Docker
brew install docker
brew install --cask docker

# AWS CLI
brew install awscli

# Install MySQL
brew install mysql
brew install --cask mysqlworkbench

# Install Redis
brew install redis

# Install Postman
brew install --cask postman

# Install Nodejs
brew install node

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Install Flutter
brew install --cask flutter

# Install React Native CLI
brew install react-native-cli

# Install Wireshark
brew install --cask wireshark

# Install iTerm2
brew install --cask iterm2

# Install Audacity
brew install --cask audacity

# Install CopyClip
brew install --cask copyclip

# Install Rectangle (window management application)
brew install --cask rectangle

# Install bat - https://github.com/sharkdp/bat
brew install bat

# Install exa - better 'ls' - https://github.com/ogham/exa
brew install exa

# Install fzf - terminal fuzzy find - https://github.com/junegunn/fzf
brew install fzf

# Install z - https://github.com/rupa/z
brew install z

# Install bash autocompletion
brew install bash-completion@2

# linting for .sh files
brew install shellcheck

# Audio/video utils and conversion tool - https://ffmpeg.org/
brew install ffmpeg

# Install wget
brew install wget

# Install more recent versions of some OS X tools
brew install vim
brew install nano
brew install grep
brew install openssh

# Install antigen for zshell
curl -L git.io/antigen > antigen.zsh