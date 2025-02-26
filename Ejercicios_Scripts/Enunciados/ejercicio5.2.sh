#!/bin/bash

#Que reciba como parámetros uno o varios nombres de usuarios 
#y verifique si existen en el sistema.


for username in "$@"; do
    # Comprobar si el usuario existe en el archivo /etc/passwd
    if grep -q "^$username:" /etc/passwd; then
        echo "El usuario '$username' existe en el sistema."
    else
        echo "El usuario '$username' no existe en el sistema."
    fi
done
