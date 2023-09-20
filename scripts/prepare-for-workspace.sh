#!/bin/sh

# Define the list of folders to delete
foldersToDelete=( "./.husky" )


# Iterate through the list and delete each folder
for folder in "${foldersToDelete[@]}"; do
  if [ -d "$folder" ]; then
    rm -rf "$folder"
    echo "Deleted $folder"
  else
    echo "$folder does not exist."
  fi
done





echo "prepare-workspace completed successfully! This directory is ready to be used as npm workspace"
