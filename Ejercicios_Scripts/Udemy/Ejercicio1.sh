#!/bin/bash

# Mínimo 5 datos
if [ "$#" -lt 5 ]; then
    echo "Introduce al menos 5 datos."
    exit 
fi
# Contar el número de datos
cantidad_datos=$#

# Mostrar la cantidad de datos introducidos
echo "Cantidad de datos introducidos: $cantidad_datos"

# Mostrar los tres primeros datos
echo "Primer dato: ${1}"
echo "Segundo dato: ${2}"
echo "Tercer dato: ${3}"


