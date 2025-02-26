#!/bin/bash


#Repetimos el find del apartado anterior para sacar la ruta del fichero, así no tenemos que introducirla manualmente

read -p "Introduce el nombre del fichero del apartado anterior: " fich

ruta=$(find / -name $fich -type f 2>/dev/null)

if [ -z $ruta ]; then
        echo "$fich no es un fichero o no existe"
        exit
else 
        echo "El fichero existe y su ruta es $ruta"
fi

#Ahora que hemos comprobado si existe o no, pedimos el nombre o apellido a buscar

read -p "Introduce un nombre o apellido a buscar: " nomb

result=$(grep -i $nomb "$ruta")

#Comprobamos si el grep no nos ha dado coincidencias

if [ -z "$result" ]; then
	echo "No se encontraron coincidencias para $nomb"
	exit
fi
echo "Resultados encontrados:"
time=$(date +"%H:%M:%S")  #Scamos una variable con la hora actual y usamos en el awk
echo "$result" | awk -F: -v time="$time" '{ printf "%-5s| %-15s| %-15s| %-15s | %-10s\n", $1, $2, $3, $4, time}' 



# $(date +%Y-%m-%d).txt
