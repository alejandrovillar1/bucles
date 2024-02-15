#!/bin/bash
#Creamos un while infinito 
while true; do
	echo "Vamos a comprobar la conexion.."
	#Hacemos un if con el comando ping -c 1 para que haga ping a la web 
	# del instituto y solamente mande 1 paquete icmp
	#Automaticamente el resultado lo descartara en /dev/null para que no
	# ocupe espacio innecesario
	if ping -c 1 www.ies-sabadell.cat &> /dev/null; then
	echo "Abriendo el  navegador..."
	# Abrimos el firefox con la pagina del insitutto
	firefox "www.ies-sabadell.cat"
	break
	else
	echo "No hay conexion a internet lo intentaremos en 5 segundos."
	#Hacemos un sleep de 5 segundos para asi esperar para hacer la nueva conexion
	sleep 5
	fi
done
