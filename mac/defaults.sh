#!/bin/sh -e

# Clean up Dock defaults
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array

# Custom screenshots directory
mkdir -p ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots

# General > AirDrop & Continuity: Allow Handoff between this Mac and your iCloud devices
defaults -currentHost write com.apple.coreservices.useractivityd ActivityAdvertisingAllowed -bool false
defaults -currentHost write com.apple.coreservices.useractivityd ActivityReceivingAllowed -bool false

# General > Date & Time: 24-hour time
defaults write -g AppleICUForce24HourTime -bool true

# Accessibility > Zoom: Use scroll gesture with modifier keys to zoom (Control is default)
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true

# Desktop & Dock > Dock: Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Desktop & Dock > Dock: Don't show suggested and recent apps
defaults write com.apple.dock show-recents -bool false

# Desktop & Dock > Dock: Remove the delay to show and hide the dock
defaults write com.apple.dock autohide-delay -float 0

# Desktop & Dock > Windows: Tiled windows have margins
defaults write com.apple.WindowManager EnableTiledWindowMargins -bool false

# Desktop & Dock > Mission Control: Don't automatically rearrange Spaces
defaults write com.apple.dock mru-spaces -bool false

# Desktop & Dock > Hot Corners (disable all, bottom right is Quick Note by default)
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-br-corner -int 0

# Menu Bar: Spotlight (untick)
defaults -currentHost write com.apple.Spotlight MenuItemHidden -bool true

# Keyboard: Key repeat rate & Delay until repeat (fastest possible, I like a snappy keyboard)
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15

# Cursor
defaults write com.todesktop.230313mzl4w4u92 ApplePressAndHoldEnabled -bool false
defaults write com.todesktop.230313mzl4w4u92 AppleWindowTabbingMode -string always

echo "Settings configured, log out and back in to fully take effect"
