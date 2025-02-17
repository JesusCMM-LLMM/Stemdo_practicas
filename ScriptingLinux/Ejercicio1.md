# Ejercicio 1 

## Apartado 1

Script sencillo que limpie la pantalla  y muestra un mensaje  
~~~
#!/bin/bash 
clear  
echo "Hola $USER. La fecha actual es $(date). "  
echo "El directorio actual es $PWD"  
~~~
## Apartado 2

Vamos a configurar el script anterior para que se ejecute al iniciar sesión.  
Para ello, vamos a usar el comando CRON (aunque hay otras formas) que nos permite programar tareas.
Usamos 
~~~
crontab -e
~~~
Y una vez dentro del archivo le añadimos
~~~
@reboot /home/usuario/Desktop/Ejercicios_Scripts/Enunciados/ejercicio1.1.sh
~~~
lo cuál le está diciendo al sistema que ese script debe ejecutarse en cada inicio. 
NO FUNCIONA REVISAR 

## Apartado 3

Un script que nos de varias informaciones del entorno de ejecución:

~~~
#! /bin/bash

echo "El nombre del script es $0"
echo "El número de parámetros es $n"
echo "La lista de parámetros recibidos es $@"
echo "El identificador del usuario que ejecuta el script es $(id -u)"
echo "El nombre del usuario es $USER"
echo "El directorio home del usuario es $HOME"
echo "El directorio actual es $PWD"
~~~
Esto nos daría toda la información que se nos ha requerido. 
