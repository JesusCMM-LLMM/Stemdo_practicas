#!/bin/bash

#Que pregunte qué usuario ha ejecutado el script y nos muestre
# un mensaje diciendo si hemos acertado o no.

read -p "¿Qué usuario ha ejecutado este script? " usu
if [ -n "$usu" ]; then 
	if [ "$usu" = "$USER" ]; then 
        	echo "Lo has acertado, era $USER"
	else echo "Inténtalo de nuevo, crack"
	fi
else echo "Introduce una respuesta"
fi

