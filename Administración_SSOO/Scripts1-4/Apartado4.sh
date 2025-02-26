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

function todas_consultas {
	echo "Se van a guardar todas las consultas en un fichero general"
	time=$(date +"%H:%M:%S")  
	echo "$result" | awk -F: -v time="$time" '{ printf "%-5s| %-15s| %-15s| %-15s | %-10s\n", $1, $2, $3, $4, time}' >> $(date +"%Y-%m-%d").txt
	echo "Se ha añadido la consulta a $(date +%Y-%m-%d).txt"
}

function cons_indiv {
	echo "Se va a guardar la consulta en un fichero individualizado"
        time=$(date +"%H:%M:%S")
	num=1
	indiv=$(date +"%Y-%m-%d")_$num.txt
        while [ -e "$indiv" ]; do #Este bucle es para que compruebe si el archivo existe y de ser así, le añada un 1,2,3...
                num=$(( num++ ))
                indiv=$(date +"%Y-%m-%d")_$num.txt
        done
	echo "$result" | awk -F: -v time="$time" '{ printf "%-5s| %-15s| %-15s| %-15s | %-10s\n", $1, $2, $3, $4, time}' >> "$indiv"
	echo "Se ha añadido la consulta a $indiv"
}
read -p "Quieres guardar la información en una consulta general (1), en una consulta individualizada (2) o salir sin guardar (3): " cons 

case $cons in
	1) todas_consultas;;
	2) cons_indiv;;
	3) exit;;
esac
