#!/bin/bash

#Comprobar si un numero aleatorio está entre 10 y 20
n1=$(shuf -i 0-30 -n 1)

if [ $n1 -gt 9 -a $n1 -lt 21 ]; then
	echo "El $n1 está entre 10 y 20"
else echo "El $n1 no está entre 10 y 20"
fi
