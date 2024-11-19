#!/bin/bash

# Timestamp для логгирования времени выполнения команды
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

# Комманда считает кол-во строк в файле input.txt 
# и записывает результат в файл output.txt
echo "$TIMESTAMP The file contains $(wc -l < input.txt | tr -d ' ') lines" >> output.txt

# Команда перенаправляет ошибку в файл error.log
echo -n "$TIMESTAMP " >> error.log
ls unknown_file.txt 2>> error.log