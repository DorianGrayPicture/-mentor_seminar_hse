#/!bin/bash
echo "Enter a file name: "
read file_name

if [ -e $file_name ]; then
	lines=$(wc -l < "$file_name")
	echo "The file contains $lines lines"
else
	echo "File does not exist!"
fi;
