#!/bin/bash

read -p "Introduce los valores: " arg1 arg2 arg3 

#Vamos a dcirle que si está vacío, lo marque como NULL
#con el expansor de parámetros, donde ':-NULL' nos dice 
#qué valor darle si el argumento está vacío.

arg1=${arg1:-NULL}
arg2=${arg2:-NULL}
arg3=${arg3:-NULL}

resultado="$arg1 $arg2 $arg3"
echo "Estos son los tres valores en una sola variable: $resultado"
echo "Estos son los tres valores por separado: $arg1, $arg2, $arg3"


