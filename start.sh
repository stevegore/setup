#!/bin/bash

# Command Line Tools (CLT) for Xcode
xcode-select --install

# Homebrew
echo "--- Installing Homebrew ---"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "--- Installing formulae and casks ---"
brew install git
git clone git@github.com:stevegore/setup.git