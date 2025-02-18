#!/bin/bash

#Que diga si se han introducido parámetros o no

param=$n

if [ $# -ge 1 ]; then
	echo "Sí se han introducido parámetros"
else 
	echo "No hay parámetros introducidos"
fi
