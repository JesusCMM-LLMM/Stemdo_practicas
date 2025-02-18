#!/bin/bash

#Notas en función de números

read -p "Introduzca la nota numérica: " nota

if [ $nota -ge 9 ]; then 
	echo "Tienes un $nota, sobresaliente"
elif [ $nota -ge 7 ]; then
	echo "Notable, tienes un $nota"
elif [ $nota -ge 6 ]; then
	echo "Tienes un $nota, un bien"
elif [ $nota -ge 5 ]; then
	echo "Aprobado raspadín, un $nota"
else echo "Tienes un $nota, eso es un suspenso"
fi
