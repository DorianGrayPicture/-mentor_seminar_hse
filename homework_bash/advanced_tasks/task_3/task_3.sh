#!/bin/bash

# Директория, в которой сортируем файлы:
DIR=files

# Проверяем, существует ли директория
if [[ -d "$DIR" ]]; then
	if [[ "$(ls -a "$DIR")" ]]; then
        # Создаем папки, в которые будем копировать файлы
        # Но сначала проверим, есть ли они уже
        if [[ ! -d $DIR/Images || ! -d $DIR/Documents ]]; then
            mkdir $DIR/Documents
            mkdir $DIR/Images
        fi;
        
        # Перемещаем файлы в необходимую директорию
        for file in "$DIR"/*.{txt,docx,pdf}; do
            mv "$file" $DIR/Documents 2> /dev/null && echo "$(date): $file moved to $DIR/Documents" >> mv.log
        done

        for file in "$DIR"/*.{png,gif,jpg}; do
            mv "$file" $DIR/Images 2> /dev/null && echo "$(date): $file moved to $DIR/Images" >> mv.log
        done
	else
		echo "Директория пустая"
	fi;
else
	echo "Директория не существует"
fi;