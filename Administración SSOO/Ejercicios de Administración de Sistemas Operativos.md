# Ejercicios de Administración de Sistemas Operativos
Me daba error con los "*", he intentado escapandolo, entre comillas.. y nada. Así que me he decidido porque el operador de la multiplicación sea la "x".
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

if [ "$op" != "+" ] && [ "$op" != "-" ] && [ "$op" != "x" ] && [ "$op" != "/" ]; then
        echo "El operador no es válido, por favor introduce + - x /"
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
    *)
        echo "Operador no reconocido."
        exit 1
        ;;
esac
~~~

## Ejercicio 1: Operaciones matemáticas en Shell Script

## Ejercicio 2: Comprobación de ficheros y almacenamiento de datos

## Ejercicio 3: Lectura y formato de datos en un fichero

## Ejercicio 4: Búsqueda de usuarios y registro de consultas

## Ejercicio 5: Escritorio remoto con Terminal Server

Para este ejercicio lo vamos a configurar con el paquete xrdp. Abrimos la terminal y ponemos 
~~~
sudo apt install xrdp
~~~
Una vez que lo tenemos instalado, vamos a configurarlo para que se inicie el servicio y se inicie también cada vez que iniciamos el sistema. Escribimos en la terminal: 
~~~
sudo systemctl start xrdp
sudo systemctl enable xrdp
~~~  
![image](https://github.com/user-attachments/assets/b3915665-fa96-408f-b295-c6a386d9b009)  

Una vez hecho esto, vamos a permitir el puerto 3389, que es default para xrdp, poniendo en la terminal 
~~~
sudo ufw allow 3389/tcp
~~~ 
Reiniciamos el servicio de xrdp para que se apliquen los cambios y ya que estamos, vemos nuestra ip porque la vamos a necesitar más adelante (con ip a). Con esto, ya estaría configurado, ahora vamos a intentar acceder desde otra máquina con la ip y el puerto 3389.
![image](https://github.com/user-attachments/assets/7409f3d6-02b2-485f-bcc6-671d7957a7c5)  
Introducimos las credenciales y ya deberíamos conectarnos al escritorio remoto, pero desde el pc con windows 11 no podemos porque la versión Home no lo permite. 
**WIP Al parecer debo descargarme realVNC, desactivar el cifrado para la conexión(gsettings set org.gnome.Vino require-encryption false) y ya**

