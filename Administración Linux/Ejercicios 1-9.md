# Ejercicio 1: Ejecutar un programa gráfico

Simplemente, en la terminal de Linux, ejecutamos 
~~~
xeyes
~~~

# Ejercicio 2

Responde las siguientes preguntas sobre el proceso xeyes:  
  
¿Cuál es su PID (Process ID)?  4202  

  ![xeyesPID](/Administración%20Linux/Imagenes/xeyesPID.png)  

  ![PPID](/Administración%20Linux/Imagenes/PPID.png)  


¿Cuál es su proceso padre (PPID - Parent Process ID)?  Bash  
¿Cuál es el PID del proceso padre?  3884  

# Ejercicio 3

¿Cuántos procesos hay actualmente en ejecución en el sistema?  

  ![CuentaProcesos](/Administración%20Linux/Imagenes/CountProc.png)

# Ejercicio 4

¿Cuántos procesos pertenecen al usuario root?  

  ![ProcRoot](/Administración%20Linux/Imagenes/ProcesosRoot.png)

# Ejercicio 5 

Descubre la jerarquía de procesos de tu usuario utilizando el siguiente comando: `pstree`  

  ![PSTREE](/Administración%20Linux/Imagenes/pstree.png)

# Ejercicio 6

Utiliza el comando `top` o `htop` para identificar el proceso que ha consumido más tiempo de CPU.

  ![HTOP](/Administración%20Linux/Imagenes/htop.png)

# Ejercicio 7

Con el comando `top`, averigua cuál es el proceso que está utilizando más espacio de memoria RAM.  

  ![TOP](/Administración%20Linux/Imagenes/top-ejer7.png)

# Ejercicio 8

Descubre cuándo se inició el sistema con el siguiente comando:

 ![UPTIME](/Administración%20Linux/Imagenes/uptime.png)

# Ejercicio 9 
Montar un Disco Duro en Linux en VirtualBox  
---  

Entramos en Virtualbox, y en la opción 'Almacenamiento', pulsamos en 'Añadir un disco duro', y creamos uno nuevo.  
![DD1](/Administración%20Linux/Imagenes/DiscoDuro1.png)  
![DD2](/Administración%20Linux/Imagenes/DiscoDuro2.png)    
Una vez creado, volvemos a la misma lista de antes y vemos que ya sale como disco duro virtual, lo seleccionamos y pulsamos 'Seleccionar'. Vemos que ya aparece en el Puerto SATA 1.  
Vamos a iniciar la máquina virtual y seguimos desde ahí.  
Usando `sudo fdisk -l` vemos que lo reconoce y su nombre es `/dev/sdb`  
![DD3](/Administración%20Linux/Imagenes/DiscoDuro3.png)  
Entramos en fdisk en este nuevo disco con el comando `sudo fdisk /dev/sdb` y usamos el comando `n` para crear una nueva partición, después la opción `p` para que la partición sea del tipo primario, y que sea la partición número 1. Después, ponemos como sistema de archivos Linux, con la opción `t`, introducimos la opción 83. Una vez hecho esto, usamos la opción `w` y se guardan los cambios.   
![DD5](/Administración%20Linux/Imagenes/DiscoDuro5.png)  
A continuación, la formateamos en ext4 con `sudo mkfs.ext4 /dev/sdb`  
![DD6](/Administración%20Linux/Imagenes/DiscoDuro6.png)  
Ahora, vamos a montarlo. Creamos un directorio donde montarlo, y lo montamos usando el comando `mount`.  
![DD7](/Administración%20Linux/Imagenes/DiscoDuro7.png)  
Por último, vamos a editar el archivo `/etc/fstab` para que se monte siempre al iniciar sesión. Usamos `sudo blkid` para obtener el UUID del nuevo disco, y añadimos esta información junto a la ruta de montaje en este archivo en una línea, y voilá.   


