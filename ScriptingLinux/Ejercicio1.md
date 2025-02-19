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
Para ello, vamos a añadir el script al archivo bashrc  
Usamos 
~~~
sudo nano ~/.bashrc
~~~
Y una vez dentro del archivo le añadimos el script (preferiblemente al final del archivo para no romper nada), y ya estaría.
Esto le está diciendo al sistema que ese script debe ejecutarse en cada inicio.
Abrimos la consola de comandos y comprobamos que son las primeras líneas que se muestran. 


## Apartado 3

Un script que nos de varias informaciones del entorno de ejecución:

~~~
#! /bin/bash

echo "El nombre del script es $0"
echo "El número de parámetros es $#"
echo "La lista de parámetros recibidos es $@"
echo "El identificador del usuario que ejecuta el script es $(id -u)"
echo "El nombre del usuario es $USER"
echo "El directorio home del usuario es $HOME"
echo "El directorio actual es $PWD"
~~~
Esto nos daría toda la información que se nos ha requerido. 
