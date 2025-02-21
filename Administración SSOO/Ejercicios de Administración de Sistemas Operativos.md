# Ejercicios de Administración de Sistemas Operativos

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
**WIP**

