#!bin/bash

echo "enter the directory path"

read dir_path

echo "Enter the permission"

read permissions

chmod -R $permissions $dir_path

echo "permission change"











