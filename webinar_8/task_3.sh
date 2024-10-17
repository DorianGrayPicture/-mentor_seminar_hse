#!/bin/zsh

read -p "Enter the directory path or * for current directory: " dir_path

if [ "$dir_path" == "*" ]; then
	tar -czvf archive_$(date +%Y-%m-%d).tar.gz .
elif [ -d "$dir_path" ]; then
	tar -czvf archive_$(date +%Y-%m-%d).tar.gz -C "$dir_path"
else
	echo "Directory does not exist"
fi;
