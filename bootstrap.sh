#!/bin/sh

# This script downloads and sets up the devsetup repository

# Define repository URL
DEVSETUP_REPO="https://github.com/frankjony17/dev_setup"

# Download the devsetup repository
git clone "$DEVSETUP_REPO" || {
    echo "Error: Unable to clone devsetup repository. Exiting."
    exit 1
}

# Change to the devsetup directory
cd devsetup || {
    echo "Error: Unable to change to devsetup directory. Exiting."
    exit 1
}

# Run setup.sh
if [ -f setup.sh ]; then
    ./setup.sh
else
    echo "Error: 'setup.sh' not found in devsetup repository. Exiting."
    exit 1
fi

echo "DevSetup setup complete!"
