#!/bin/zsh

# Global variables
export DEVSETUP_DIR="$HOME/devsetup"
export DEVSETUP_SHELL="$HOME/devsetup/shell"

# Nix configuration
if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
    . "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi

# Add global scripts to path
export PATH="$HOME/devsetup/bin:$PATH"