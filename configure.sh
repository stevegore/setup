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

echo "--- Paste.app ---"
curl -O https://downloads.pasteapp.io/public/Paste.dmg
open Paste.dmg

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
cp -r Shell/.k9s ~

cp iTerm/com.googlecode.iterm2.plist ~/Library/Preferences

echo "--- macOS Preferences ---"
source macOS/set-defaults.sh

# TODO
# Subpixel antialiasing needs to be turned on manually in iTerm
# Download SSH keys, GPG keys
# Add keys to any private GitHub instances
# Tweak git config
# Tweak CDPATH
# Sign into mac App Store
# Install purchases from macOS App Store - Paste, (Personal:  HP Easy Scan)
# Add all licence keys to apps
# Configure installed apps (VS Code, FireFox, Proxifier, OmniFocus, Enpass, ForkLift, etc.)
# Download album from here for screensaver - https://www.flickr.com/photos/152977080@N03/albums/72157681812020976
# Set Login Items for user - incl. iTerm, Enpass etc. - hidden