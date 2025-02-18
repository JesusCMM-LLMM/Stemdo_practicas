#!/bin/bash
#Mejorar las notas con CASE

read -p "Introduzca la nota: " nota

case $nota in
	9|10)
	echo "Sobresaliente";;
	[87])
	echo "Notable";;
	6) 
	echo "Bien";;
	5) 
	echo "Aprobado";;
	[43210])
	echo "Suspenso";;
esac


