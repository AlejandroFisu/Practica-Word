clear
seguir="s"
while [[ "$seguir" =~ ^[Ss]$ ]]; do
	cd
	clear
	pwd
	ls
	echo #
	echo "----------------------- <Script de Borrado> ----------------------------"
	echo #
	read -p "---------------- <Seleccione el Directorio de trabajo> -------------- " eleccion 
	directorio=$(find -type d -name "$eleccion")
	if [ "$directorio" = "" ]; then
		echo "El directorio "$eleccion" no existe"
		sleep 2
		cd 
		continue
	elif [ "$directorio" != "." ]; then
		cd "$directorio"
		pwd
		ls

	fi
	read -p "Si desea borrar Directorio (1) Archivo (2): " elegir
	case $elegir in
		1)	read -p "Seleccione el Directorio: " seledir
			direc=$(find -type d -name "$seledir")
			if [ "$direc" = "" ]; then
				echo "El directorio "$seledir" no Existe"
				sleep 2
				continue
			else
				rm -r "$seledir"
				echo "El directorio "$seledir" fue borrado"
				sleep 2
			fi
			;;
		2) 	read -p "Seleccione el Archivo: " selearchi
			archi=$(find . -name "$selearchi")
			if [ "$archi" = "" ]; then
				echo "El arhivo "$selearchi" no existe"
				sleep 2
				continue
			else
				rm "$selearchi"
				echo "El archivo "$selearhi" fue borrado"
				sleep 2
			fi
			;;
		*) 	echo "opcion invalida"
			
	esac
	read -p "Desea continuar S/N: " seguir
	echo "$seguir"
	if [[ "$seguir" =~ ^[Ss]$ ]]; then
		continue
	fi
done 
