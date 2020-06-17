#!/bin/bash

echo "--- Installing Brew packages ---"
brew bundle install --file Brew/Brewfile

echo "--- Oh-my-zsh ---"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "--- Powerline10k ---"
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

echo "--- Rust ---"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "--- ZSH completions ---"
# zsh-completions plugin
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

# Install fonts
echo "--- Fonts ---"
mkdir -p ~/Library/Fonts
cp Fonts/* ~/Library/Fonts

echo "--- Preferences ---"
# Copy preferences over
for f in .aliases.sh .gitconfig .p10k.zsh .zshrc; do
    echo "Copying $f"
    cp Shell/$f ~
done
cp Shell/oh-my-zsh.sh ~/.oh-my-zsh

cp iTerm/com.googlecode.iterm2.plist ~/Library/Preferences

echo "--- macOS Preferences ---"
source macOS/set-defaults.sh

# TODO
# Subpixel antialiasing needs to be turned on manually in iTerm
# Download SSH keys, GPG keys
# Add keys to any private GitHub instances
# Tweak git config
# Tweak CDPATH
# Install purchases from macOS App Store - Paste, Microsoft Remote Desktop, DaisyDisk (Personal: iStumbler, HP Easy Scan)
# Add all licence keys to apps
# Configure installed apps (VS Code, FireFox, Proxifier, OmniFocus, Enpass, ForkLift, etc.)
