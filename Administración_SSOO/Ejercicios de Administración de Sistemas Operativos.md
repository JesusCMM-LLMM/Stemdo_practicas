# Ejercicios de Administración de Sistemas Operativos

## Ejercicio 1: Operaciones matemáticas en Shell Script

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

