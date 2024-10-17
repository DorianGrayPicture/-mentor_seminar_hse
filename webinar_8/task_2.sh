echo "Enter a file name: "
read file_name

if [ -e $filename ]; then
	echo "File exists!"
else
        echo "File does not exist!"
fi;
