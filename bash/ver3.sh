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
	verificar=$(find -type d -name "$directorio"
	read -p "Desea continuar S/N: " control
	
	if [[ "$control" =~ ^"Ss"$ ]]; then
		continue
	else
		exit 1
	fi
done
