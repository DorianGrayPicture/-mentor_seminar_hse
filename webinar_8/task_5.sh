#!/bin/bash

read -p "Enter a directory name: " dir_name

if [ -d "$dir_name" ]; then
	if [ "$(ls -a $dir_name)" ]; then
		echo "Directory is not empty"
	else
		echo "Directory is not empty"
	fi;
else
	echo "Directory does not exist"
fi;
