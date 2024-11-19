#!/bin/bash

# Запрашиваем у пользователя чило
read -p "Введите число: " NUMBER

# Проверяем введенное число
if [[ $NUMBER -gt 0 ]]; then
    echo "Число положительное"
elif [[ $NUMBER -eq 0 ]]; then
    echo "Число равно нулю"
else
    echo "Число отрицательное"
fi;

for ((i=1; i<=NUMBER; i++)); do
    echo $i
done
    