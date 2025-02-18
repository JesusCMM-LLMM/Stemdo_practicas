#! /bin/bash

num=$RANDOM

echo El número es $num

resto=$(($num%2))

if [ $resto = 0 ]; then
	echo $num es par
else
	echo $num es impar
fi
