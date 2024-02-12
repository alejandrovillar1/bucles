#!/bin/bash
#Pedimos que quiere hacer si hacer otro archivo para guardar o guardarlo en
#en un archivo ya existente

echo -n "Como se llama el el archivo?: "
read nombrearchivo
if [ -e "$nombrearchivo" ];then
echo "Añade todas las palabras que quieras y finaliza introduciendo ':>'"
parar=":<"
while [ "$parar" != ":>" ]; do
	echo "$palabras" >> "$nombrearchivo"

	echo -n "Introduce una palabra para añadirla: "
	read palabras
	if [ "$palabras" = ":>" ]; then
	parar=":>"
	fi
done
else
echo "El archivo no existe primero crea el archivo."
fi



