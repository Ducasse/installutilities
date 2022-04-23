#!/usr/bin/env bash

source ./utils.sh

e_header "Installing brew cask apps"

e_arrow "Installing cask and tapping"

brew tap caskroom/versions

e_arrow "Installing cask apps"

apps=(
  atom
  brave-browser
  openinterminal
  openinterminal-lite
  daisydisk
  discord
  emacs
  texshop
  flycut
  google-chrome
  iterm2
  plex-media-player
  transmission
  transmit
  textmate
  vlc
)
for app in "${apps[@]}"; do
  brew cask install $app
done

e_arrow "Installing QuickLook plugins"
# from https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode \
  qlstephen \
  qlmarkdown \
  quicklook-json \
  qlimagesize \
  suspicious-package \
  quicklookase \
  qlvideo

e_arrow "Setting Brave Browser as the default browser"

# For OpenInTerminal-Lite:
defaults remove wang.jianing.app.OpenInTerminal-Lite LiteDefaultTerminal

#open -a "Brave Browser" --args --make-default-browser

#ngrok network
#kap screen capture
# firefox

e_success "Done!"
