# Ejercicios de Administración de Sistemas Operativos

## Ejercicio 1: Operaciones matemáticas en Shell Script
~~~
#!/bin/bash

read -p "Introduce un directorio: " dir

if [ ! -d "$dir" ]; then
    echo "El directorio '$dir' no existe."
    exit
fi

#Hasta aquí hemos verificado si el directorio existe

read -p "Introduce el nombre del fichero en el directorio: " fich
ruta="$dir/$fich"

#Vamos a pedir los cinco nombres con un bucle for dentro del if que comprueba si el fichero existe
#El pipe hacia awk nos permite imprimir la primera columna, que tiene los permisos

if [ -e "$ruta" ]; then
    echo "El fichero '$fich' existe."
    echo "Permisos del fichero:"
    ls -l "$ruta" | awk '{print $1}'
    for i in {1..5}; do
        read -p "Introduce el nombre completo del usuario $i: " nombre apellido1 apellido2
        echo "$i:$nombre:$apellido1:$apellido2" >> "$ruta"
    	done
    	echo "Nombres almacenados en '$ruta'."
else
    echo "El fichero '$fich' no existe."
    exit 1
fi
~~~

## Ejercicio 2: Comprobación de ficheros y almacenamiento de datos

## Ejercicio 3: Lectura y formato de datos en un fichero

## Ejercicio 4: Búsqueda de usuarios y registro de consultas

## Ejercicio 5: Escritorio remoto con Terminal Server

Para este ejercicio lo vamos a usar con remmina desde Linux a Windows. Lo primero, en la MV Windows, activamos el Escritorio Remoro (Configuración -> Sistema -> Escritorio Remoto -> Habilitar Escritorio Remoto).  
En Linux, instalamos Remmina y todos sus complementos: 
~~~
sudo apt install remmina remmina-plugin-rdp
~~~
Obtenemos la IP de la máquina Windows (con ipconfig).

Ahora vamos a ejecutar Remmina desde el menú de aplicaciones, introducimos la IP, nos autenticamos con las credenciales de la máquina a la que vamos a acceder (la de Windows en este caso) y ya tendríamos acceso. 

![Screenshot_1](https://github.com/user-attachments/assets/fee4a88a-d65e-420f-b526-cbd4324e999b)

