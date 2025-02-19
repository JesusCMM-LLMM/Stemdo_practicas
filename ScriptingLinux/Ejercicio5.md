# Ejercicio 5

## Apartado 1 

~~~

~~~

## Apartado 2
Con este script pasamos usuarios como parámetros y comprobamos que existan en el sistema.  
La opción -q de grep hace que grep no imprima ninguna salida por pantalla.
~~~
for username in "$@"; do
    # Comprobar si el usuario existe en el archivo /etc/passwd
    if grep -q "^$username:" /etc/passwd; then
        echo "El usuario '$username' existe en el sistema."
    else
        echo "El usuario '$username' no existe en el sistema."
    fi
done
~~~

