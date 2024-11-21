#!/bin/bash

# Запрашиваем у пользователя желаемую директорию
read -p "Enter a directory name: " DIR_NAME

# Проверяем, существует ли директория
if [[ -d "$DIR_NAME" ]]; then
	if [[ "$(ls -a "$DIR_NAME")" ]]; then
        # Текущая дата
	    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
        # Создаем папку, куда будем копировать файлы
        BACKUP_FOLDER="$DIR_NAME"/backup-"$TIMESTAMP"
        mkdir "$BACKUP_FOLDER"
        
        # Копируем файлы из указанной директории в только что созданную папку
        # Переменная count отслеживает количество скопированных файлов
        # Также в домашней директории создается файл logfile.log, куда записываются логи копирования файлов
        count=0
        for file in "$DIR_NAME"/*; do
            cp "$file" "$BACKUP_FOLDER" && echo "Файл $file скопирован в $BACKUP_FOLDER" >> ~/logfile.log && ((count++))
        done
        
        # Уведомляем о том, сколько файлов было успешно скопировано
        echo "Файлов скопировано: $count"
	else
		echo "Directory is empty"
	fi;
else
	echo "Directory does not exist"
fi;