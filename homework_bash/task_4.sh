#!/bin/bash

# Функция выводит сообщение в формате "Hello ...!"
# Usage: hello_function <text>
hello_function() {
    echo "Hello, $1!"
}

# Функциия складывает два числа и выводит результат
# Usage: add_numbers <number 1> <number 2>
add_numbers() {
    local sum=$(( $1 + $2 ))
    echo "$1 + $2 = $sum"
}

hello_function "Denis"
add_numbers 1 5