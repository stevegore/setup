#!/bin/bash
p10k configure

# zsh-completions plugin
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

pushd Shell
cp .aliases.sh ~
cp .gitconfig ~
cp .p10k.zsh ~
cp .zshrc ~
cp oh-my-zsh.sh ~/.oh-my-zsh
popd

mkdir ~/.iTerm
cp iTerm/com.googlecode.iterm2.plist ~/.iTerm

# TODO
# Set iTerm to load preferences from ~/.iTerm
# SSH keys, GPG keys
# Add keys to GHE
# Tweak git config
# Tweak CDPATH