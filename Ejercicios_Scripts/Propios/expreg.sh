#!/bin/bash
read -p "Introduce el DNI comprobar: " dni

if [ $dni=~^[[:digit:]]{8}[[:alpha:]]{1}$ ]; then
echo "El formato es válido"

else
echo "Formato incorrecto, pruebe de nuevo"

fi


