#!/bin/bash

read -p "Introduce el nombre del fichero del apartado anterior: " fich

ruta=$(find / -name $fich -type f 2>/dev/null)

if [ -z $ruta ]; then
	echo "$fich no es un fichero o no existe"
	exit
else 
	echo "El fichero existe y su ruta es $ruta"
fi

if [ -r "$ruta" ]; then
        awk -F: '{ printf "%-5s| %-15s| %-15s| %-15s\n", $1, $2, $3, $4 }' "$ruta"
else
        echo "No tiene permisos de lectura"
fi
