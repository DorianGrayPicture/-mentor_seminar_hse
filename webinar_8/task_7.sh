#!/bin/bash

echo "Enter a number 1: "
read number_1

echo "Enter a number 2:"
read number_2

add_numbers() {
	sum=$(( $number_1 + $number_2 ))
	echo "Result of adding $number_1 with $number_2 is $sum"
}

add_numbers
