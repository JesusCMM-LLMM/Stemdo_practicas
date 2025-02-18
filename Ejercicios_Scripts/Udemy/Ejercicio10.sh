#!/bin/bash

#Pide ruta y ofrece opciones

read -p "Introduce una ruta: " ruta
echo "Su ruta es $ruta."

echo "1 - Comprobar si es un directorio"
echo "2 - Crear el directorio"
echo "3 - Listar el contenido"

read -p "Selecciona una de estas opciones: " opt

case $opt in
	1)
	if [ -d $ruta ]; then
	echo "Es un directorio"
	else echo "No es un directorio"
	fi
	;;
	2)
	mkdir $ruta ;;

	3)
	$ruta ls -l ;;
esac
