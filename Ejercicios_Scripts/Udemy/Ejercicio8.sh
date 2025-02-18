#! /bin/bash

#Genera num aleatorio, y pide al usuario otros dos
#Comprueba si el num generado es divisible

num0=$(shuf -i 1-32000 -n 1)

read -p "Introduce dos números. " num1 num2

result1=$(($num0%num1))
result2=$(($num0%num2))

if [ $result1 = 0 -a $result2 = 0 ]; then
	echo "$num0 es divisible por $num1 y $num2"
elif [ $result1 = 0 -a $result2 != 0 ]; then 
	echo "$num0 es divisible por $num1 pero no por $num2"
elif [ $result1 != 0 -a $result2 = 0 ]; then 
	echo "$num0 no es divisible por $num1 pero sí por $num2"
else
	echo "$num0 no es divisible por ninguno"
fi




