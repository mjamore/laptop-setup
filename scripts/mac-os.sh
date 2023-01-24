#!/usr/bin/env bash

# https://gist.github.com/CvX/6069760
# https://www.defaults-write.com/

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


###############################################################################
# General System Settings                                                     #
###############################################################################

# Dark mode
defaults write NSGlobalDomain AppleInterfaceStyle Dark

# Show the ~/Library folder.
chflags nohidden ~/Library

# Use AirDrop over every interface.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Set language and text formats
defaults write NSGlobalDomain AppleLanguages -array "en" "pl"
defaults write NSGlobalDomain AppleLocale -string "en_PL"

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true



###############################################################################
# Menu Bar Settings                                                           #
###############################################################################

# Show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"




###############################################################################
# Battery Power Settings                                                      #
###############################################################################

# Display sleep: 5 min
sudo pmset -b displaysleep 5

# Computer sleep: 20 min
sudo pmset -b sleep 20



###############################################################################
# Power Adapter Settings                                                      #
###############################################################################

# Display sleep: 15 min
sudo pmset -c displaysleep 15

# Computer sleep: 30 min
sudo pmset -c sleep 30



###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true

# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

# Don't rearrange spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false


###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: default all views to column view
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: show hidden files by default
defaults write com.apple.Finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Group windows by application in Mission Control
defaults write com.apple.dock expose-group-apps -bool true


###############################################################################
# Dock, Dashboard                                                             #
###############################################################################

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.Dock autohide-delay -float 0

# Add iOS Simulator to Launchpad
sudo ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/iOS Simulator.app" "/Applications/iOS Simulator.app"


###############################################################################
# Terminal                                                                    #
###############################################################################

# Show hidden files in Terminal
defaults write com.apple.Finder AppleShowAllFiles true

# Enable Secure Keyboard Entry in Terminal.app
# See: https://security.stackexchange.com/a/47786/8918
defaults write com.apple.terminal SecureKeyboardEntry -bool true

# Set default shell to Bash
chsh -s /bin/bash


###############################################################################
# TextEdit                                                                    #
###############################################################################

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0
# Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Display HTML files as HTML code instead of formatted text in TextEdit
defaults write com.apple.TextEdit IgnoreHTML -bool true


###############################################################################
# Photos                                                                      #
###############################################################################

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true


###############################################################################
# Safari                                                                      #
###############################################################################

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true


###############################################################################
# Mac App Store                                                               #
###############################################################################

# Enable the WebKit Developer Tools in the Mac App Store
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# Enable Debug Menu in the Mac App Store
defaults write com.apple.appstore ShowDebugMenu -bool true


###############################################################################
# CopyClip2                                                                   #
###############################################################################

# Start CopyClip on startup
defaults write com.fiplab.copyclip2 StartAtLogin -bool true


###############################################################################
# Rectangle                                                                   #
###############################################################################

# Start Rectangle on startup
defaults write com.knollsoft.Rectangle StartAtLogin -bool true



for app in "Dock" "Finder" "Photos" "Terminal"; do
	killall "${app}" &> /dev/null

done
echo "Done. Note that some of these changes require a logout/restart to take effect."