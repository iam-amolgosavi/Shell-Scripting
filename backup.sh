#!bin/bash

backup_dir= "/home"

timestamp= $(date + "%Y%m%d_%H%M%S")

backup_file= "${backup_dir}/backup_${timestamp}.tar.gz

#Create backup

tar-czf $backup_file /home/ubuntu/backup

echo "backup created at $backup_file
















