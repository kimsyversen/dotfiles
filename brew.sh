#!/usr/bin/env bash

# Configure Git
read -p "Enter name # " name
read -p "Enter email # "  email

# Install xcode command line tools
#xcode-select –install

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Update homebrew
brew doctor && brew update

# Install gnu tools
brew install coreutils
brew install wget

# Install cask
brew install caskroom/cask/brew-cask 

# Install some software
brew cask install subime-text sequel-pro spectacle dropbox viscosity bash-completion google-chrome alfred firefox git flux iterm2 spotify vlc the-unarchiver

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install srm
brew install srm && brew link --force srm

# Quicklook plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package && qlmanage -r

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Setup git
git config --global user.email "$email"
git config --global user.name "$name"
git config --global push.default simple

brew install homebrew/completions/brew-cask-completion