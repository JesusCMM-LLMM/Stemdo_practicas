#!/bin/bash

read -p "Introduce un directorio: " dir

if [ ! -d "$dir" ]; then
    echo "El directorio '$dir' no existe."
    exit
fi

#Hasta aquí hemos verificado si el directorio existe

read -p "Introduce el nombre del fichero en el directorio: " fich
ruta="$dir/$fich"

#Vamos a pedir los cinco nombres con un bucle for dentro del if que comprueba si el fichero existe
#El pipe hacia awk nos permite imprimir la primera columna, que tiene los permisos

if [ -e "$ruta" ]; then
    echo "El fichero '$fich' existe."
    echo "Permisos del fichero:"
    ls -l "$ruta" | awk '{print $1}'
 	for i in {1..5}; do
        read -p "Introduce el nombre completo del usuario $i: " nombre apellido1 apellido2
        echo "$i:$nombre:$apellido1:$apellido2" >> "$ruta"
    	done
    	echo "Nombres almacenados en '$ruta'."
else
    echo "El fichero '$fich' no existe."
    exit 1
fi

