#!/bin/bash

# Command Line Tools (CLT) for Xcode
xcode-select --install

# Homebrew
echo "--- Installing Homebrew ---"
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "--- Installing formulae and casks ---"
brew install $(cat brew/formulae)
brew cask install $(cat brew/casks)

# Terminal setup
echo "--- Oh-my-zsh ---"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "--- Powerline10k ---"
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

echo "Open iTerm2 and run terminal.sh"

# TODO:
# install rust
# install stuff from app store
# add all licence keys to apps
# configure forklift with webdav
# configure omnifocus and enpass
# configure vs code
# sign into FireFox
