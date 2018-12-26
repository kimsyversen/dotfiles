#!/usr/bin/env bash

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew upgrade

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
brew install gnu-sed --with-default-names

# Install more recent versions of some macOS tools.
brew install wget --with-iri
brew install grep

# Install software
brew cask install virtualbox virtualbox-extension-pack atom \
sequel-pro spectacle dropbox viscosity bash-completion google-chrome \
alfred firefox git flux iterm2 spotify vlc the-unarchiver

# Quicklook plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json \
qlprettypatch quicklook-csv betterzipql webpquicklook \
suspicious-package

qlmanage -r

# Remove outdated versions from the cellar.
brew cleanup
