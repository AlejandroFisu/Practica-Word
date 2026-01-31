#!/bin/bash
clear
control="S"
while [[ "$control" =~ ^[Ss]$ ]]; do
	clear
	cd
	#echo "Directorio de trabajo: $(pwd)"
	echo "Directorio de trabajo: " $(pwd)
	echo "Contenido:" 
	ls
	echo #
	read -p "Seleccione el Directorio de trabajo: " directorio
	verificar=$(find -type d -name "$directorio")
	if [ "$verificar" = "" ]; then
		echo "El directorio "$directorio" no existe"
		echo #
		echo "Verifique el contenido: "
		echo "Directorio de trabajo: " $(pwd)
		echo "Contenido: "
		ls
		sleep 5
		continue
	elif [ "$verificar" = "." ]; then
		echo "Seguimos en " $(pwd)
		echo #
	else
		cd "$verificar"
		echo "El directorio de Trabajo es: " $(pwd)
		echo "Contenido: "
		ls
		sleep 3
	fi
	read -p "Seleccione el archivo: " archi
	archivo=$(find . -name "$archi")
	if [ "$archivo" = "" ]; then
		echo "El archivo "$archi" no existe"
		cd
		sleep 3
		continue
	else
		echo "archivo tipo: " $(file "$archi")
		sleep 3
	fi
	read -p "Desea continuar S/N: " control
	
	if [[ "$control" =~ ^[Ss]$ ]]; then
		continue
	else
		exit 1
	fi
done
