#!/bin/bash

backup_dir="/home/ubuntu"
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_file="${backup_dir}/backup_${timestamp}.tar.gz"

# Create backup, excluding the backup file itself
tar -czf "$backup_file" --exclude="$backup_file" "/home/ubuntu"

# Check if backup was successful
if [ $? -eq 0 ]; then
  echo "Backup created successfully: $backup_file"
else
  echo "Backup failed."
fi
