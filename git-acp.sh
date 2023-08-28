#!/bin/bash

# Check if there is at least one argument provided (the commit message)
if [ $# -eq 0 ]; then
    echo "Please provide a commit message."
    exit 1
fi

# Stage all changes
git add .

# Commit with the provided message
git commit -m "$1"

# Push the changes to the remote repository
git push
