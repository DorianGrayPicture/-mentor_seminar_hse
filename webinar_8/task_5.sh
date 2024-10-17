#!/bin/bash

read -p "Enter a directory name: " dir_name

if [ -d "$dir_name" ]; then
	if [ "$(ls -a $dir_name)" ]; then
		prefix="backup_"
		mkdir -p $dir_name/backup
		for file in $dir_name/*; do
			echo "Copying..."
		done
	else
		echo "Directory is empty"
	fi;
else
	echo "Directory does not exist"
fi;
