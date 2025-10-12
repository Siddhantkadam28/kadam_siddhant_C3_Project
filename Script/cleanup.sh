#!/bin/bash
#set -e  # Uncomment this line to stop the script if any command fails

# Define the target directory (optional)
# TARGET_DIR="/home/ec2-user/my-python-app"

echo "Removing old files..."
# rm -rf "$TARGET_DIR"/*   # Use this if TARGET_DIR is defined
rm -rf "/home/ec2-user/my-python-app"/*
echo "Old files removed successfully."
