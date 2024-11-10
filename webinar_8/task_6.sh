#!/bin/bash

read -p "Enter a directory name:" dir_name

if [[ -d "$dir_name" ]]; then
	if [[ "$(ls -a $dir_name)" ]]; then
		find "$dir_name" -type f -mtime +7 -exec rm {} \;
	else
		echo "Directory is empty"
	fi;
else
	echo "Directory does not exist"
fi;
