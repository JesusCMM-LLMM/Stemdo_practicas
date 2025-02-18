#!/bin/bash

read -p "Introduce los valores: " arg1 arg2 arg3 

#Vamos a dcirle que si está vacío, lo marque como NULL
#con el expansor de parámetros, donde ':-NULL' nos dice 
#qué valor darle si el argumento está vacío.

arg1=${arg1:-NULL}
arg2=${arg2:-NULL}
arg3=${arg3:-NULL}

echo "Estos son los tres valores: $arg1, $arg2, $arg3"

#Ahora hay que seleccionar los tres primeros
