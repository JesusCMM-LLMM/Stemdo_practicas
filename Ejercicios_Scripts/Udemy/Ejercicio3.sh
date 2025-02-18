#!/bin/bash
#Que pida un número y diga si es par o no (es decir si
#al dividir por dos su resto es cero).
#Se utilizará el operador % y la estructura if.

read -p "Introduce un numero: " num

if [ $(($num%2)) -eq 0 ]; then
	echo "$num es par"
else echo "$num es impar"
fi

