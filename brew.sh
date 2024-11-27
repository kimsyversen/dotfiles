#!/usr/bin/env bash

# Install Homebrew
[ ! -f "`which brew`" ] && ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Configure Git

read -p "Enter name # " name
read -p "Enter email # "  email

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install more recent versions of some macOS tools.
brew install wget grep

# Install software
brew install --cask iterm2 signal alfred firefox vlc handbrake plex veracrypt spotify sublime-text visual-studio-code the-unarchiver spaceship

# Quicklook plugins
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json \
qlprettypatch quicklook-csv qlimagesize webpquicklook \
suspicious-package

# Reset quicklookd server, rebuild list of generator plugins
#qlmanage -r
