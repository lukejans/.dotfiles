#!/usr/bin/env bash

# exit on error, unset variables, and pipe failures
set -euo pipefail

# -- lukejans verify_setup.sh

# remove the temporary file on any exit
trap 'rm -f "$SETUP_SCRIPT"' EXIT

# download the script into a temporary file
echo "Downloading setup script..."
SETUP_SCRIPT=$(mktemp)
curl -fsSL "https://raw.githubusercontent.com/lukejans/dotfiles/main/setup.sh" -o "$SETUP_SCRIPT"

echo "Calculating SHA256 hashes..."
# hash of the remote file, fetched fresh
REMOTE_SHA=$(curl -fsSL "https://raw.githubusercontent.com/lukejans/dotfiles/main/setup.sh" |
  sha256sum | awk '{print $1}')
# hash of the downloaded file
LOCAL_SHA=$(sha256sum "$SETUP_SCRIPT" | awk '{print $1}')

echo "Remote SHA256: $REMOTE_SHA"
echo "Local  SHA256: $LOCAL_SHA"

if [ "$REMOTE_SHA" = "$LOCAL_SHA" ]; then
  echo -e "\033[1;32m✔\033[0m File integrity verified! Executing setup script…"
  echo
  bash "$SETUP_SCRIPT"
else
  echo -e "\033[1;31m✘ ERROR:\033[0m Hash mismatch—aborting!"
  echo "This could be a network hiccup or tampering."
  echo "Download hash: $LOCAL_SHA"
  echo "Expected hash: $REMOTE_SHA"
  exit 1
fi
