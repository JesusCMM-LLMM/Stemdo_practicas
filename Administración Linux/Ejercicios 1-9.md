# Ejercicio 1: Ejecutar un programa gráfico

Simplemente, en la terminal de Linux, ejecutamos 
~~~
xeyes
~~~

# Ejercicio 2

Responde las siguientes preguntas sobre el proceso xeyes:
Antes que nada, sacamos la información del proceso con `ps -e | grep nombre_del_proceso`  
¿Cuál es su PID (Process ID)?  4202  

Para saber su proceso padre usamos `ps -eo pid,ppid,cmd | grep xeyes` que nos devuelve el PID, PPID y nombre de xeyes y después usamos `ps -e | grep 3884` para saber el nombre del proceso con ID 3884.  

---
![xeyesPID](/Administración%20Linux/Imagenes/xeyesPID.png)  
---
![PPID](/Administración%20Linux/Imagenes/PPID.png)  
---

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
