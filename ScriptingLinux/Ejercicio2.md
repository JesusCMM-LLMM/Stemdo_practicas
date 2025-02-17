# Ejercicio 2

## Apartado 1
Vamos a crear un script que, usando solo un read, nos pida exactamente 4 parámetros. Dará fallo si pasamos más o menos. 
~~~
#!/bin/bash

read -p "Introduce exactamente cuatro valores: " v1 v2 v3 v4 

count=$(echo "$v1 $v2 $v3 $v4" | wc -w)

if [ $count -eq 4 ]; then
        echo "Has introducido 4 valores, que son $v1 $v2 $v3 $v4"
elif [ $count -lt 4 ]; then
        echo "Has introducido menos de 4 valores. El programa terminará"
        exit
else
        echo "Has introducido más de 4 valores. El programa terminará"
fi
~~~
Siento que la solución de usar echo y después contar las palabras no es la más eficiente.  
Además, mostrar los datos al introducir exactamente 4 valores podría lograrse con "$*"

## Apartado 2

