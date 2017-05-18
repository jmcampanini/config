#!/bin/bash

# get the admin password up front
sudo -v

# =================
# Menu Bar Settings
# =================

# turn it to default to dark
defaults write “Apple Global Domain” AppleInterfaceStyle -string Dark


# =============
# Dock Settings
# =============

# auto hide the dock
defaults write com.apple.dock autohide -int 1

# set the tile size of the dock
defaults write com.apple.dock tilesize -int 36


# ==============================
# Mouse + Trackpad Configuration
# ==============================

#defaults write "Apple Global Domain" AppleEnableMouseSwipeNavigateWithScrolls -int 1
#defaults write "Apple Global Domain" com.apple.trackpad.forceClick -int 0

#defaults write "com.apple.AppleMultitouchMouse" MouseButtonMode -string TwoButton
#defaults write "com.apple.AppleMultitouchMouse" MouseTwoFingerDoubleTapGesture -int 0

#defaults write "com.apple.driver.AppleBluetoothMultitouch.mouse" MouseButtonMode -string TwoButton
#defaults write "com.apple.driver.AppleBluetoothMultitouch.mouse" MouseTwoFingerDoubleTapGesture -int 0

#defaults write "com.apple.AppleMultitouchTrackpad" Clicking -int 1
#defaults write "com.apple.AppleMultitouchTrackpad" TrackpadThreeFingerHorizSwipeGesture -int 0
#defaults write "com.apple.AppleMultitouchTrackpad" TrackpadThreeFingerVertSwipeGesture -int 0
#defaults write "com.apple.AppleMultitouchTrackpad" TrackpadTwoFingerDoubleTapGesture -int 0
#defaults write "com.apple.AppleMultitouchTrackpad" TrackpadThreeFingerDrag -int 1

#defaults write "com.apple.dock" showAppExposeGestureEnabled -int 1
#defaults write "com.apple.dock" showLaunchpadGestureEnabled -int 0

#defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" Clicking -int 1
#defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" TrackpadThreeFingerHorizSwipeGesture -int 0
#defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" TrackpadThreeFingerVertSwipeGesture -int 0
#defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" TrackpadTwoFingerDoubleTapGesture -int 0
#defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" TrackpadThreeFingerDrag -int 1

defaults write "Apple Global Domain" AppleShowScrollBars -string WhenScrolling


# =================
# Keyboard Settings
# =================

# stop on all form fields
defaults write "Apple Global Domain" AppleKeyboardUIMode -int 2

# key repeat settings
defaults write "Apple Global Domain" InitialKeyRepeat -int 15
defaults write "Apple Global Domain" KeyRepeat -int 1
defaults write "Apple Global Domain" "InitialKeyRepeat_Level_Saved" -int 6
defaults write "Apple Global Domain" ApplePressAndHoldEnabled -bool false

# turn off auto spell correct
defaults write "Apple Global Domain" NSAutomaticSpellingCorrectionEnabled -int 0
defaults write "Apple Global Domain" WebAutomaticSpellingCorrectionEnabled -int 0


# ==============
# Clock Settings
# ==============

defaults write "com.apple.menuextra.clock" DateFormat -string "EEE MMM d h:mm a"
defaults write "com.apple.menuextra.clock" FlashDateSeparators -int 0
defaults write "com.apple.menuextra.clock" IsAnalog -int 0

# ===============
# Safari Settings
# ===============

#defaults write "com.apple.Safari" AutoOpenSafeDownloads -int 0
#defaults write "com.apple.Safari" AutoFillCreditCardData -int 0
#defaults write "com.apple.Safari" AutoFillFromAddressBook -int 0
#defaults write "com.apple.Safari" AutoFillMiscellaneousForms -int 0
#defaults write "com.apple.Safari" ShowFullURLInSmartSearchField -int 1
#defaults write "com.apple.Safari" WebKitTabToLinksPreferenceKey -int 1
#defaults write "com.apple.Safari" IncludeDevelopMenu -int 1
#defaults write "com.apple.Safari" HomePage -string ""
#defaults write "com.apple.Safari" NewTabBehavior -int 1
#defaults write "com.apple.Safari" NewWindowBehavior -int 1


# ==================
# OmniFocus Settings
# ==================

#defaults write "com.omnigroup.OmniFocus2" QuickEntryHotKey -dict flags "command|shift|option|control" key 31


# ==========
# General UX
# ==========

# Disable smart quotes as they’re annoying when typing code
#defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
#defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# ask for password right after screen saver
#defaults write "com.apple.screensaver" askForPasswordDelay -int 0 

# ===============
# Finder Settings
# ===============

# Set Desktop as the default location for new Finder windows
#defaults write "com.apple.finder" NewWindowTargetPathwWindowTarget -string "PfDe"
#defaults write "com.apple.finder" NewWindowTargetPath -string "file://${HOME}/"

# Finder: show status bar
#defaults write "com.apple.finder" ShowStatusBar -bool true

# Finder: show path bar
#defaults write "com.apple.finder" ShowPathbar -bool true

# Display full POSIX path as Finder window title
#defaults write "com.apple.finder" _FXShowPosixPathInTitle -bool true

# Flowview
#defaults write "com.apple.finder" FXPreferredViewStyle -string "clmv"

# =========================
# Reset / Reload Everything
# =========================

# Kill the dock
killall Dock Safari
killall -KILL SystemUIServer
