# Ejercicio 3

## Apartado 1  
Calculadora básica para introducir dos números y después el operador.  
Realizará la operación deseada según el operador introducido.  

~~~
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
~~~

## Apartado 2
Calculadora de IMC

~~~
#!/bin/bash

#Calculadora de IMC

read -p "Inserte su peso en kg: " peso
read -p "Inserte su estatura en metros: " altura

#No podemos operar con floats dentro de $((..))
#Así que vamos a pasarlo con una tubería por bc, que es una calculadora de precision arbitraria
#scale=2 nos fija los decimales en dos. 

IMC=$(echo "scale=2; $peso / ($altura * $altura)" | bc)
echo "Su IMC es $IMC"
~~~

## Apartado 3
Recibe la ruta de un fichero como parámetro. 

~~~
#!/bin/bash

#Recibe la ruta y verifica si tiene permisos

read -p "Introduce una ruta a verificar: " ruta
#La opción -z nos asegura que el parámetro no esté vacío. Por lo demás no tiene
#complicación, usando las opciones -e para saber que existe
#y -x para verificar los permisos.

if [ -z $ruta ]; then 
	echo "No se ha introducido un parámetro"
else
	if [ -e $ruta ]; then
		if [ -x $ruta ]; then 
			echo "El fichero existe y tiene permisos de ejecución"
		else echo "El fichero existe pero no tiene permisos de ejecución"
		fi
	else 
		echo "En fichero no existe"
	fi
fi
~~~

