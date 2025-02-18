# Ejercicio 2

## Apartado 1
Vamos a crear un script que use solo un read, si hay más argumentos que valores introducidos, los argumentos sobrantes reciben el valor NULL,
y si se introducen más valores que argumentos esperados, los valores adicionales se asignan al último argumento.
~~~
#!/bin/bash

read -p "Introduce los valores: " arg1 arg2 arg3 

#Vamos a dcirle que si está vacío, lo marque como NULL
#con el expansor de parámetros, donde ':-NULL' nos dice 
#qué valor darle si el argumento está vacío.

arg1=${arg1:-NULL}
arg2=${arg2:-NULL}
arg3=${arg3:-NULL}

echo "Estos son los tres valores: $arg1, $arg2, $arg3"
~~~
Con esto se cumpliría. 

## Apartado 2

