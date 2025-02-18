#! /bin/bash

#Cogemos la hora actual primero

hora_actual="$(date +%H)"

#Mostramos la hora actual
echo "La hora actual es $(date +%H:%M:%S) así que.."

#Diferentes mensajes según la hora
if [ "$hora_actual" -lt 12 ]; then
	echo "Buenos días Mundo"
elif [ "$hora_actual" -lt 20 ]; then
	echo "Buenas tardes, ha sido ya Juan y Medio?"
else
	echo "A mimir"
fi
#No hay forma más corta de obtener minutos y segundos?
#No puedo comparar la hora completa con -lt
#No tengo claro el uso de las comillas
