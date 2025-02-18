#! /bin/bash

echo "El nombre del script es $0"
echo "El número de parámetros es $#"
echo "La lista de parámetros recibidos es $@"
echo "El identificador del usuario que ejecuta el script es $(id -u)"
echo "El nombre del usuario es $USER"
echo "El directorio home del usuario es $HOME"
echo "El directorio actual es $PWD"


