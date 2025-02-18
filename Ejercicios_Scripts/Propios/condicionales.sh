#! bin/bash
#1. Comprobará la conexion
#2. Descarga un archivo, mensaje si bien
#3. Decir si es grande o peq

ping -c1 www.cursea.me &> /dev/null || exit 1
wget http://www.cursea.me/poemas.tar.gz &> /dev/null && echo "Fichero descargado correctamente"
size=$(du poemas.tar.gz | cut -f1)

if [ $size -gt 1000 ]; then
	echo "Este archivo es grande"
else
	echo "Este archivo es pequeño"
fi

