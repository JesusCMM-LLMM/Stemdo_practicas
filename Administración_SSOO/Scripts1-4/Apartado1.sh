#!/bin/bash

if [ $# -ne 3 ]; then
	echo "No has introducido exactamente tres argumentos. Vuelve a intentarlo" 
	exit
fi
num1=$1
op=$2
num2=$3

if [[ ! $1 =~ ^[0-9]+$ ]]; then
	echo "El primer parámetro no es un número"
	exit
fi

if [ "$op" != "+" ] && [ "$op" != "-" ] && [ "$op" != "x" ] && [ "$op" != "/" ] && [ "$op" != "^" ]; then
        echo "El operador no es válido, por favor introduce +, -, x, /, o ^"
        exit
fi

if [[ ! $3 =~ ^[0-9]+$ ]]; then
        echo "El segundo parámetro no es un número"
        exit
fi

case "$op" in
    "+")
        echo "La suma de $num1 y $num2 es $(( num1 + num2 ))"
        ;;
    "-")
        echo "La resta de $num1 y $num2 es $(( num1 - num2 ))"
        ;;
    "x")
        echo "La multiplicación de $num1 y $num2 es $(( num1 * num2 ))"
        ;;
    "/")
        if [ "$num2" -eq 0 ]; then
            echo "No se puede dividir entre cero."
            exit 1
        fi
        echo "La división de $num1 y $num2 es $(( num1 / num2 ))"
        ;;
    "^")
        echo "La potencia de $num1 elevado a $num2 es $(( num1 ** num2 ))"
        ;;
    *)
        echo "Operador no reconocido."
        exit 1
        ;;
esac
