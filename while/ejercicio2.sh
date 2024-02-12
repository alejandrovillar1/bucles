#!/bin/bash

#Creamos una lista para guardar los usuarios que contengan mayusuculas
usuarios_con_mayusculas=()

#Hacemos un bucle para que vaya linea por linea
while read -r linea; do
	#Sacamos el usuario de la linea con  caracteres de expansion 
	usuario="${linea%%:*}"
	#COmprobamos que contenga alguna letra mayuscula
	if [[ $usuario  == *[[:upper:]]* ]]; then
		echo "$usuario"
		usuarios_con_mayusculas+=("$usuario")
	fi
done < /etc/passwd

#Ahora pedimos un nombre de usuario
acierto="no"
while [[ $acierto != "si" ]]; do
	echo -n "Introduce un nombre de usuario existente: "
	read input
#Hacemos un for para comprobar cada elemento de la lista creada
concuerda=false
for usuario in "${usuarios_con_mayusculas[@]}"; do
#COmprobamos si es igual el input al contenido de la lista es que existe
if [[ "$input" == "$usuario" ]]; then
	concuerda=true
fi
done

#Imprimimos el resultado
if $concuerda; then
echo "COrrecto"
acierto="si"
#Mostramos toda la informacion disponible del usuario
while read -r linea; do
	#Sacamos el usuario de la linea con  caracteres de expansion 
	usuario="${linea%%:*}"
	#Hacemos que si es igual el input con el usuario se imprima la linea (contiene la informacion del usuairo)
	if [[ $usuario  == $input ]]; then
		echo "$linea"
	fi
done < /etc/passwd


else
echo "Incorrecto"
fi
done
#Comprobamos que xista
#sudo cat /etc/passwd
