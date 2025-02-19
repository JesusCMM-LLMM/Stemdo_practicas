#!/bin/bash

#Recibe la ruta y verifica si tiene permisos

read -p "Introduce una ruta a verificar: " ruta

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
