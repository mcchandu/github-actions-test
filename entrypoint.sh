#!/bin/bash
set -e

# Configure Git to trust the workspace directory
git config --global --add safe.directory /github/workspace

# Sync the repository to CodeCommit
# Add your specific sync commands here, for example:
# git push https://git-codecommit.${AWS_REGION}.amazonaws.com/v1/repos/${REPOSITORY_NAME} HEAD:main

# Example sync command (replace with actual sync logic)
echo "Syncing to CodeCommit repository..."
