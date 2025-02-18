#! /bin/bash

#Pide numeros, dice si son pares o impares y el cero finaliza el bucle. 

while true; do
	read -p "Introduce un número: " num

	if [ $num -eq 0 ]; then
		echo "Programa terminado"
		break
	elif [ $(($num%2)) = 0 ]; then
		echo "El $num es par"
	else 
		echo "El $num es impar"
	fi
done
