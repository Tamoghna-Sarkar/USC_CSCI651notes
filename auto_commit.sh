#!/bin/bash

# Set the timezone to your local timezone and format the date
COMMIT_MESSAGE="Auto-commit at $(TZ=America/Los_Angeles date +'%Y-%m-%d %H:%M:%S')"

# Add all changes, commit, and push to the repository
git add .
git commit -m "$COMMIT_MESSAGE"
git push origin main
