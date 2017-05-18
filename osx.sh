#!/bin/bash

# heavily inspired by:
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos

# get the admin password up front
sudo -v

# =================
# Menu Bar Settings
# =================

# turn it to default to dark
defaults write NSGlobalDomain AppleInterfaceStyle Dark

# =============
# Dock Settings
# =============

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# set the tile size of the dock
defaults write com.apple.dock tilesize -int 36


# ===========
# Hot Corners
# ===========

# Bottom left screen corner → Start screen saver
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0


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

# Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Allow hitting the Backspace key to go to the previous page in history
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# Hide Safari’s bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Hide Safari’s sidebar in Top Sites
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

# Disable Safari’s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Remove useless icons from Safari’s bookmarks bar
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Enable continuous spellchecking
defaults write com.apple.Safari WebContinuousSpellCheckingEnabled -bool true

# Disable auto-correct
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false

# Disable AutoFill
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

# Warn about fraudulent websites
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true

# Disable plug-ins
defaults write com.apple.Safari WebKitPluginsEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2PluginsEnabled -bool false

# Disable Java
defaults write com.apple.Safari WebKitJavaEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled -bool false

# Block pop-up windows
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false

# Enable “Do Not Track”
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# Update extensions automatically
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true


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

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool truev

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

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
defaults write "com.apple.finder" FXPreferredViewStyle -string "clmv"

# =========================
# Reset / Reload Everything
# =========================

for app in "Activity Monitor" \
	"Address Book" \
	"Calendar" \
	"cfprefsd" \
	"Contacts" \
	"Dock" \
	"Finder" \
	"Google Chrome Canary" \
	"Google Chrome" \
	"Mail" \
	"Messages" \
	"Opera" \
	"Photos" \
	"Safari" \
	"SizeUp" \
	"Spectacle" \
	"SystemUIServer" \
	"Terminal" \
	"Transmission" \
	"Tweetbot" \
	"Twitter" \
	"iCal"; do
	killall "${app}" &> /dev/null
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
