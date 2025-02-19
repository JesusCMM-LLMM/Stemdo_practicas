# Ejercicio 2

## Apartado 1
Vamos a crear un script que use solo un read, si hay más argumentos que valores introducidos, los argumentos sobrantes reciben el valor NULL,
y si se introducen más valores que argumentos esperados, los valores adicionales se asignan al último argumento.
~~~
#!/bin/bash

read -p "Introduce los valores: " arg1 arg2 arg3 

#Vamos a dcirle que si está vacío, lo marque como NULL
#con el expansor de parámetros, donde ':-NULL' nos dice 
#qué valor darle si el argumento está vacío.

arg1=${arg1:-NULL}
arg2=${arg2:-NULL}
arg3=${arg3:-NULL}

echo "Estos son los tres valores: $arg1, $arg2, $arg3"
~~~
Con esto se cumpliría. 

## Apartado 2
Este ejercicio es un ejemplo de printf.  
~~~
#! /bin/bash

#!/bin/bash

# 1. Mostrar valores alineados en columnas
# Con el formato %-10s le decimos que el texto se alinea a la izquierda
# con un campo de 10 caracteres; si hay menos, se rellenará con espacios por la derecha.
#Si hay más, se ajusta a la cadena introducida y empujaría a la adyacente
# Como hay tres columnas, lo repetimos tres veces.
# \n sirve para indicar saltos de línea

echo "Valores alineados en columnas:"
printf "%-10s %-10s %-10s\n" "Nombre" "Edad" "Ciudad"
printf "%-10s %-10d %-10s\n" "Vicky" 23 "Huelva"
printf "%-10s %-10d %-10s\n" "Jose" 53 "Punta Umbria"
printf "%-10s %-10d %-10s\n" "Dani" 18 "Huelva"
printf "%-10s %-10d %-10s\n" "Jesus" 34 "Valencia"
echo  "" #Este echo está solo para crear un poco de espacio

# 2. Formatear números con decimales
# El . indica la precision, el numero (2 y 4 en este caso) el num de decimales
# y f que se trata de un número de punto flotante.

echo "Números formateados con decimales:"
num1=5.8897665
num2=248.8755787567567
printf "Valor del primer número: %.2f\n" "$num1"
printf "Valor del segundo número: %.4f\n" "$num2"
echo ""

# 3. Agregar caracteres especiales a la salida
#\t es el caracter de escape que indica tabulacion
#\" es lo mismo, pero para las comillas

echo "Mensajes con caracteres especiales:"
printf "Texto en una línea.\n"
printf "Texto con tabulación:\tEsto está tabulado.\n"
printf "Texto con comillas: \"Texto entre comillas\"\n"
~~~

# Apartado 3  
Vamos a calcular los días hasta el 31 de Diciembre. 

~~~
#! /bin/bash

#Calcular dias hasta 31 de Diciembre
#Cogemos la fecha actual y la del 31 como variables expresadas en segundos

hoy=$(date +%s)
ultimo=$(date -d "2025-12-31" +%s)

#Las restamos y dividimos por 86400, que son los segundos en un día 

dias_restantes=$(( ( $ultimo - $hoy ) / 86400))

echo "Faltan $dias_restantes días para el 31 de diciembre."
~~~


