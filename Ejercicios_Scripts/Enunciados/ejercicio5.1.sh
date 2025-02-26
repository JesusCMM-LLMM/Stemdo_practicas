#!/bin/bash

#Tareas a realizar:
#1. Crear un usuario con el ID 999 y el nombre navin.
#2. Crear un grupo llamado oficina1.
#3. Renombrar el grupo oficina1 a oficina2.
#4. Crear un usuario sonia y agregarlo al grupo oficina2.

echo "Elige una opción:\n1. Crear un usuario con el ID 999 y el nombre navin.\n2. Crear un grupo llamado oficina1.\n3. Renombrar el grupo oficina1 a oficina2.\n4. Crear un usuario sonia y agregarlo al grupo oficina2.\n5. Salir." 
read -p " " opcion

case $opcion in
	1)
	echo "Creando usuario 'navin' con ID 1998 (999 estaba cogido)..."
	useradd -u 1998 -m -s /bin/bash navin
    	if [ $? -eq 0 ]; then
        	echo "Usuario 'navin' creado exitosamente."
    	else
        	echo "Error al crear el usuario 'navin'."
    	fi
	;;

	2)
    	echo "Creando grupo 'oficina1'..."
    	groupadd oficina1
    	if [ $? -eq 0 ]; then
        	echo "Grupo 'oficina1' creado exitosamente."
    	else
        	echo "Error al crear el grupo 'oficina1'."
    	fi
	;;

	3)
	echo "Renombrando grupo 'oficina1' a 'oficina2'..."
    	groupmod -n oficina2 oficina1
    	if [ $? -eq 0 ]; then
        	echo "Grupo renombrado a 'oficina2' exitosamente."
    	else
        	echo "Error al renombrar el grupo."
    	fi
	;;

	4)
    	echo "Creando un nuevo usuario en 'oficina2'..."
    	useradd -m -s /bin/bash -g oficina2 nuevo_usuario
    	if [ $? -eq 0 ]; then
        	echo "Nuevo usuario creado en 'oficina2' exitosamente."
    	else
        	echo "Error al crear el nuevo usuario."
    	fi
	;;

	*)
	echo "Opción no valida. Hasta la próxima"
	exit
	;;
esac
