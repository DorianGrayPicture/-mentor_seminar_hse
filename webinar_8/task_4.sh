#/!bin/bash

read -p "Enter a file name: " file_name

if [ -e $file_name ]; then
	lines=$(wc -l < "$file_name")
	echo "The file contains $lines lines"
else
	echo "File does not exist!"
fi;
