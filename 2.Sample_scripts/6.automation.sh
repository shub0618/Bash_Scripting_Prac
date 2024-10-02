#!/bin/bash
# A simple script to automate the task of backing up a directory

# Define source directory to back up and destination for the backup
SOURCE_DIR="/path/to/source/directory"
BACKUP_DIR="/path/to/backup/directory"
BACKUP_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

echo "Starting the backup process..."
echo "Backing up files from: $SOURCE_DIR"
echo "Backup will be saved as: $BACKUP_NAME"

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Error: Source directory $SOURCE_DIR does not exist."
  exit 1
fi

# Create the backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
  echo "Backup directory $BACKUP_DIR doesn't exist. Creating it..."
  mkdir -p "$BACKUP_DIR"
fi

# Compress the source directory and save the backup
tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$SOURCE_DIR" .

# Verify if the backup was successful
if [ $? -eq 0 ]; then
  echo "Backup successful!"
  echo "Backup saved to: $BACKUP_DIR/$BACKUP_NAME"
else
  echo "Error: Backup failed!"
  exit 1
fi

echo "Backup process completed."
