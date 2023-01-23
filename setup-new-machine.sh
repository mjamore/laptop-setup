#!/usr/bin/env bash

# Setup Xcode
chmod u+x ./scripts/xcode.sh && ./scripts/xcode.sh

# # symlink it up!
chmod u+x ./scripts/symlink-setup.sh && ./scripts/symlink-setup.sh

source ~/.bash_profile

# Install applications
chmod u+x ./scripts/install-apps.sh && ./scripts/install-apps.sh

# # Mac OS configuration
chmod u+x ./scripts/mac-os.sh && ./scripts/mac-os.sh

# # Git configuration
chmod u+x ./scripts/git-config.sh && ./scripts/git-config.sh

# # VS Code configuration (Probably don't need this anymore - Just sign into VSCode)
# chmod u+x ./scripts/vs-code-config.sh && ./scripts/vs-code-config.sh
