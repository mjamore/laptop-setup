#!/usr/bin/env bash

# Setup Xcode
chmod u+x ./scripts/xcode.sh && ./scripts/xcode.sh

# Install applications
chmod u+x ./scripts/install-apps.sh && ./scripts/install-apps.sh

# Mac OS configuration
chmod u+x ./scripts/macos.sh && ./scripts/macos.sh

# Git configuration
chmod u+x ./scripts/git-config.sh && ./scripts/git-config.sh

# VS Code configuration
chmod u+x ./scripts/vs-code-config.sh && ./scripts/vs-code-config.sh

# symlink it up!
chmod u+x ./scripts/symlink-setup.sh && ./scripts/symlink-setup.sh
