#!/bin/sh -e

defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array

mkdir -p ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots

defaults write -g AppleICUForce24HourTime -bool true

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock autohide-delay -float 0

defaults write com.apple.WindowManager EnableTiledWindowMargins -bool false

defaults write com.apple.dock mru-spaces -bool false

defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-br-corner -int 0

defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 15

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCode AppleWindowTabbingMode -string always

defaults write com.todesktop.230313mzl4w4u92 ApplePressAndHoldEnabled -bool false
defaults write com.todesktop.230313mzl4w4u92 AppleWindowTabbingMode -string always

defaults write com.google.antigravity ApplePressAndHoldEnabled -bool false
defaults write com.google.antigravity AppleWindowTabbingMode -string always

killall Dock 2>/dev/null || true
killall SystemUIServer 2>/dev/null || true
