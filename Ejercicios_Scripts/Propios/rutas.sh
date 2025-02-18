#!/bin/bash

#Comprobar rutas

read -p "Introduce la ruta a comprobar: " ruta

if [ -e $ruta ]; then 
	echo "La ruta existe"
else echo "La ruta no existe"
fi

