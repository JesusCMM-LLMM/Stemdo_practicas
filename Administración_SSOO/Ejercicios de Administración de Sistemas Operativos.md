# Ejercicios de Administración de Sistemas Operativos

## Ejercicio 1: Operaciones matemáticas en Shell Script

~~~

#!/bin/bash

if [ $# -ne 3 ]; then
	echo "No has introducido exactamente tres argumentos. Vuelve a intentarlo" 
	exit
fi
num1=$1
op=$2
num2=$3

if [[ ! $1 =~ ^[0-9]+$ ]]; then
	echo "El primer parámetro no es un número"
	exit
fi

if [ "$op" != "+" ] && [ "$op" != "-" ] && [ "$op" != "x" ] && [ "$op" != "/" ] && [ "$op" != "^" ]; then
        echo "El operador no es válido, por favor introduce +, -, x, /, o ^"
        exit
fi

if [[ ! $3 =~ ^[0-9]+$ ]]; then
        echo "El segundo parámetro no es un número"
        exit
fi

case "$op" in
    "+")
        echo "La suma de $num1 y $num2 es $(( num1 + num2 ))"
        ;;
    "-")
        echo "La resta de $num1 y $num2 es $(( num1 - num2 ))"
        ;;
    "x")
        echo "La multiplicación de $num1 y $num2 es $(( num1 * num2 ))"
        ;;
    "/")
        if [ "$num2" -eq 0 ]; then
            echo "No se puede dividir entre cero."
            exit 1
        fi
        echo "La división de $num1 y $num2 es $(( num1 / num2 ))"
        ;;
    "^")
        echo "La potencia de $num1 elevado a $num2 es $(( num1 ** num2 ))"
        ;;
    *)
        echo "Operador no reconocido."
        exit 1
        ;;
esac

~~~

## Ejercicio 2: Comprobación de ficheros y almacenamiento de datos

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

## Ejercicio 3: Lectura y formato de datos en un fichero

~~~
#!/bin/bash

read -p "Introduce el nombre del fichero del apartado anterior: " fich

ruta=$(find / -name $fich -type f 2>/dev/null)

if [ -z $ruta ]; then
	echo "$fich no es un fichero o no existe"
	exit
else 
	echo "El fichero existe y su ruta es $ruta"
fi

if [ -r "$ruta" ]; then
        awk -F: '{ printf "%-5s| %-15s| %-15s| %-15s\n", $1, $2, $3, $4 }' "$ruta"
else
        echo "No tiene permisos de lectura"
fi
~~~

## Ejercicio 4: Búsqueda de usuarios y registro de consultas
Este es probablemente del que más orgulloso estoy. Busca el archivo, me dice si existe y busca el nombre o apellido dado, lo imprime por pantalla y nos da la opcion a guardarlo de dos formas o a salir sin guardar. 
~~~
#!/bin/bash

#Repetimos el find del apartado anterior para sacar la ruta del fichero, así no tenemos que introducirla manualmente

read -p "Introduce el nombre del fichero del apartado anterior: " fich

ruta=$(find / -name $fich -type f 2>/dev/null)

if [ -z $ruta ]; then
        echo "$fich no es un fichero o no existe"
        exit
else 
        echo "El fichero existe y su ruta es $ruta"
fi

#Ahora que hemos comprobado si existe o no, pedimos el nombre o apellido a buscar

read -p "Introduce un nombre o apellido a buscar: " nomb

result=$(grep -i $nomb "$ruta")

#Comprobamos si el grep no nos ha dado coincidencias

if [ -z "$result" ]; then
	echo "No se encontraron coincidencias para $nomb"
	exit
fi
echo "Resultados encontrados:"
time=$(date +"%H:%M:%S")  #Scamos una variable con la hora actual y usamos en el awk
echo "$result" | awk -F: -v time="$time" '{ printf "%-5s| %-15s| %-15s| %-15s | %-10s\n", $1, $2, $3, $4, time}'

function todas_consultas {
	echo "Se van a guardar todas las consultas en un fichero general"
	time=$(date +"%H:%M:%S")  
	echo "$result" | awk -F: -v time="$time" '{ printf "%-5s| %-15s| %-15s| %-15s | %-10s\n", $1, $2, $3, $4, time}' >> $(date +"%Y-%m-%d").txt
	echo "Se ha añadido la consulta a $(date +%Y-%m-%d).txt"
}

function cons_indiv {
	echo "Se va a guardar la consulta en un fichero individualizado"
        time=$(date +"%H:%M:%S")
	num=1
	indiv=$(date +"%Y-%m-%d")_$num.txt
        while [ -e "$indiv" ]; do #Este bucle es para que compruebe si el archivo existe y de ser así, le añada un 1,2,3...
                num=$(( num++ ))
                indiv=$(date +"%Y-%m-%d")_$num.txt
        done
	echo "$result" | awk -F: -v time="$time" '{ printf "%-5s| %-15s| %-15s| %-15s | %-10s\n", $1, $2, $3, $4, time}' >> "$indiv"
	echo "Se ha añadido la consulta a $indiv"
}
read -p "Quieres guardar la información en una consulta general (1), en una consulta individualizada (2) o salir sin guardar (3): " cons 

case $cons in
	1) todas_consultas;;
	2) cons_indiv;;
	3) exit;;
esac
~~~

## Ejercicio 5: Escritorio remoto con Terminal Server

Para este ejercicio lo vamos a usar con remmina desde Linux a Windows. Lo primero, en la MV Windows, activamos el Escritorio Remoro (Configuración -> Sistema -> Escritorio Remoto -> Habilitar Escritorio Remoto).  
En Linux, instalamos Remmina y todos sus complementos: 
~~~
sudo apt install remmina remmina-plugin-rdp
~~~
Obtenemos la IP de la máquina Windows (con ipconfig).

Ahora vamos a ejecutar Remmina desde el menú de aplicaciones, introducimos la IP, nos autenticamos con las credenciales de la máquina a la que vamos a acceder (la de Windows en este caso) y ya tendríamos acceso. 

![Screenshot_1](https://github.com/user-attachments/assets/fee4a88a-d65e-420f-b526-cbd4324e999b)

