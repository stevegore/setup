#!/bin/bash

echo "--- Installing formulae and casks ---"
brew install $(cat brew/formulae)
brew cask install $(cat brew/casks)

echo "--- Oh-my-zsh ---"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "--- Powerline10k ---"
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

echo "--- Rust ---"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Open iTerm2 and run terminal.sh"

# TODO:
# Install purchases from macOS App Store
# Add all licence keys to apps
# Configure installed apps (VS Code, FireFox, Proxifier, OmniFocus, Enpass, ForkLift, etc.)
