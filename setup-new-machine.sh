#!/usr/bin/env bash

# Agree to xcode license
sudo xcodebuild -license accept

# Install applications
chmod u+x ./scripts/install-apps.sh && ./scripts/install-apps.sh

# Mac OS configuration
chmod u+x ./scripts/macos.sh && ./scripts/macos.sh

# Terminal configuration
chmod u+x ./scripts/terminal-config.sh && ./scripts/terminal-config.sh

# VS Code configuration
chmod u+x ./scripts/vs-code-config.sh && ./scripts/vs-code-config.sh
