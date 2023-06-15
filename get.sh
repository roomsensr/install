#!/bin/sh

REPO_URL="https://github.com/roomsensr/install.git"
DESTINATION_FOLDER="packages"

# Clone the repository
git clone $REPO_URL temp_dir

# Check if the destination folder exists
if [ -d "$DESTINATION_FOLDER" ]; then
    mv temp_dir/packages/* $DESTINATION_FOLDER
else
    mv temp_dir .
fi

# Cleanup - remove the temporary directory
rm -rf temp_dir
