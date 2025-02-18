
#!/bin/bash

#Que le pasemos dos datos y nos diga cuál de los dos es más grande.
#Hacerlo primero usando parámetros y después usando la orden read.

#Parámetros

num=$n
echo "Has introducido $# parámetros."
if [ $1 -gt $2 ]; then 
echo "El mayor es $1"
else echo "El mayor es $2"
fi

#Comando read

read -p "Introduce dos números: " num1 num2 
if [ $# -eq 2 ]; then
	if [ $num1 -gt $num2 ]; then
	echo "$num1 es mayor que $num2"
	else echo "$num2 es mayor que $num1"
	fi
else echo "No has introducido dos números"
fi
