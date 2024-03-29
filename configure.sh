#!/bin/bash

echo "--- Installing Brew packages ---"
brew bundle install --file Brew/Brewfile

echo "--- Oh-my-zsh ---"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "--- Powerline10k ---"
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

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
for f in .aliases.sh .gitconfig .p10k.zsh .zshrc .vimrc; do
    echo "Copying $f"
    cp Shell/$f ~
done

cp -r Shell/.k9s ~
touch ~/.hushlogin

cp iTerm/com.googlecode.iterm2.plist ~/Library/Preferences

$(brew --prefix)/opt/fzf/install

echo "--- macOS Preferences ---"
source macOS/set-defaults.sh

# TODO
# Download SSH keys, GPG keys
# Add keys to any private GitHub instances
# Tweak git config to include GPG key
# Tweak CDPATH
# Sign into mac App Store
# VS Code profile sync
# Firefox profile sync
# Add all licence keys to apps
# Configure installed apps (VS Code, FireFox, Proxifier, OmniFocus, Enpass, ForkLift, etc.)
# Download album from here for screensaver - https://www.flickr.com/photos/152977080@N03/albums/72157681812020976
# Set Login Items for user