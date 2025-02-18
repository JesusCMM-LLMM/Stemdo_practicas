
#! /bin/bash

#Se le pasa una ruta como parámetro y nos dice si es archivo regular, si es directorio o si no existe



if [ -e $1 ]; then
	if [ -f $1 ]; then
    		echo "$1 es un archivo."
	elif [ -d $1 ]; then
    		echo "$1 es un directorio."
	else
		echo "$1 existe pero ni es directorio ni es fichero"
	fi
else
    echo "$1 no existe."
fi

