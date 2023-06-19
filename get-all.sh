#!/bin/sh

REPO_URL="https://github.com/roomsensr/install.git"
DESTINATION_FOLDER="packages"
DESTINATION_FOLDER2="pyscript"
DESTINATION_FOLDER3="www/cards"

# Clone the repository
git clone $REPO_URL temp_dir

# Move to the first destination folder if it exists or create it
if [ -d "$DESTINATION_FOLDER" ]; then
    mv temp_dir/packages/* $DESTINATION_FOLDER
else
    mkdir $DESTINATION_FOLDER
    mv temp_dir/packages/* $DESTINATION_FOLDER
fi

# Move to the second destination folder if it exists or create it
if [ -d "$DESTINATION_FOLDER2" ]; then
    mv temp_dir/pyscript/* $DESTINATION_FOLDER2
else
    mkdir $DESTINATION_FOLDER2
    mv temp_dir/pyscript/* $DESTINATION_FOLDER2
fi

if [ -d "$DESTINATION_FOLDER3" ]; then
    mv temp_dir/cards/* $DESTINATION_FOLDER3
else
    if [ -d "www" ]; then
        mkdir www  
    fi
    mkdir $DESTINATION_FOLDER3
    mv temp_dir/cards/* $DESTINATION_FOLDER3
fi

# Cleanup - remove the temporary directory
rm -rf temp_dir
