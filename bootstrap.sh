#!/bin/sh

# This script downloads and sets up the dev_setup repository

# Define repository URL
DEVSETUP_REPO="https://github.com/frankjony17/dev_setup"

# Download the dev_setup repository
git clone "$DEVSETUP_REPO" || {
    echo "Error: Unable to clone dev_setup repository. Exiting."
    exit 1
}

# Change to the dev_setup directory
cd dev_setup || {
    echo "Error: Unable to change to dev_setup directory. Exiting."
    exit 1
}

# Run setup.sh
if [ -f setup.sh ]; then
    ./setup.sh
else
    echo "Error: 'setup.sh' not found in dev_setup repository. Exiting."
    exit 1
fi

echo "dev_setup setup complete!"
