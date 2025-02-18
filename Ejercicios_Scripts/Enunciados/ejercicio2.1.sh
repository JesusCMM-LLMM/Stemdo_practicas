#!/bin/bash

read -p "Introduce exactamente cuatro valores: " v1 v2 v3 v4 

count=$(echo "$v1 $v2 $v3 $v4" | wc -w)

if [ $count -eq 4 ]; then
	echo "Has introducido 4 valores, que son $v1 $v2 $v3 $v4"
elif [ $count -lt 4 ]; then
	echo "Has introducido menos de 4 valores. El programa terminará"
	exit
else
	echo "Has introducido más de 4 valores. El programa terminará"
fi

