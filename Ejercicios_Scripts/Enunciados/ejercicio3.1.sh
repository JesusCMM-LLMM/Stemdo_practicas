#! /bin/bash

#Calculadora básica
#No hay más que usar la condicion if con los diferentes operadores

read -p "Ingresa los valores numéricos: " num1 num2

read -p "Ingresa el operador a usar: " op

if [ "$op" = "+" ]; then
	echo "La suma de $num1 y $num2 es $(( $num1 + $num2 ))"
elif [ "$op" = "-" ]; then
        echo "La resta de $num1 y $num2 es $(( $num1 - $num2 ))"
elif [ "$op" = "*" ]; then
	echo "La multiplicación de $num1 y $num2 es $(( $num1 * $num2 ))"
elif [ "$op" = "/" ]; then
        echo "La división de $num1 y $num2 es $(( $num1 / $num2 ))"
else
	echo "Operador no válido"
fi
