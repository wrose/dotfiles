#! /bin/bash

read -p "Make sure you are logged into the Mac App Store. Then, press ENTER to continue"

echo 'Installing xcode cli tools'
/usr/bin/xcode-select --install

# Installing Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Installing Homebrew packages
. $HOME/dotfiles/install/brew-install.sh

echo "Disabling Gatekeeper"
sudo spctl --master-disable

echo "Unhiding ~/Library"
chflags nohidden ~/Library

echo "Set fast key repeat rate"
# Set fast key repeat rate
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

echo "Show filename extensions by default"
# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "show battery percentage"
# show battery percentage
defaults write com.apple.menuextra.battery ShowPercent YES

#bluetooth in menu bar
open '/System/Library/CoreServices/Menu Extras/Bluetooth.menu'
