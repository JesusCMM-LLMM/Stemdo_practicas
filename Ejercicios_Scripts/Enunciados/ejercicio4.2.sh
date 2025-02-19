#!/bin/bash

#filtrar procesos de usuario

read -p "Inserte el nombre de un usuario del sistema: " usuario

ps -u $usuario --format=pid,cmd --sort=cmd

#Gracias a las opciones format y sort podemos 
#Elegir qué columnas se muestran 
#Y por qué columna ordenarlo
