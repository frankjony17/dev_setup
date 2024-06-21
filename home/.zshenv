#!/bin/zsh

# Global variables
export DEVSETUP_DIR="$HOME/dev_setup"
export DEVSETUP_SHELL="$HOME/dev_setup/shell"

# Nix configuration
if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
    . "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi

# Add global scripts to path
export PATH="$HOME/dev_setup/bin:$PATH"
