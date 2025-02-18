#! /bin/bash

#Fecha de nacimiento y calcule la edad.

read -p "Introduca su año de nacimiento: " YEAR
read -p "Introduca su mes de nacimiento: " MES
read -p "Introduca su día de nacimiento: " DIA

EDAD=$(($(date +%Y)-$YEAR))

if [ $(date +%m) -lt $MES ]; then
	EDAD=$(($EDAD-1))
elif [ $(date +%m) -eq $MES -a $(date +%d) -lt $DIA ]; then
	EDAD=$(($EDAD-1))
fi

echo Su edad es $EDAD años 


