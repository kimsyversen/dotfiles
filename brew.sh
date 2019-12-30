#!/usr/bin/env bash

# Install Homebrew
[ ! -f "`which brew`" ] && ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Configure Git
echo -e "Time to configure some details for Git\n"
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
brew cask install iterm2 signal dropbox alfred alfred dropbox firefox google-chrome vlc 1password viscosity handbrake plex veracrypt spotify qbittorrent skybox sublime-text visual-studio-code sequel-pro the-unarchiver skybox

# Quicklook plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json \
qlprettypatch quicklook-csv  webpquicklook \
suspicious-package

# Reset quicklookd server, rebuild list of generator plugins
#qlmanage -r
