#! /bin/bash

#Todas las operaciones aritmeticas con estrada de teclado

read -p "Introducir primer número: " n1 
read -p "Introducir segundo número: " n2

echo "Suma = $((n1+n2))"
echo "Resta = $((n1-n2))"
echo "Multiplicación = $((n1*n2))"
echo "División = $((n1/n2))"
echo "Resto = $((n1%n2))"
