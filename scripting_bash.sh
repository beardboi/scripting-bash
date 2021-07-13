#!/bin/bash

# Option 2)
initApache() {
	clear
	status=$(service apache2 status)
	if [[ $status == *"active (running)"* ]]; then
		echo "####################################"
		echo "El servidor Apache ya esta corriendo"
		echo "####################################"
	else 
		echo "####################################"
		echo "#    Iniciando servidor Apache...  #"
		echo "####################################"
		service apache2 start
	fi
	echo ""
	showMenu
}

showActiveConnections() {
	clear
	echo "Listando conexiones activas..."
	netstat -putona
	showMenu
}

closeProgram() {
	echo "#########################"
	echo "# Cerrando programa...  #"
	echo "#########################"
	exit 1
}

showMenu() {
	echo "####################################"
	echo "# Autor: Diego Bravo"
	echo "# Fecha: 12/07/2021"
	echo "# Correo: diego.bravo@alumnos.ucn.cl"
	echo "# Curso: Seguridad TI"
	echo "####################################"
	echo ""
	echo "[1] Mapeo de red con Netcat"
	echo "[2] Iniciar servidor de Apache"
	echo "[3] Enumeracion de dominios"
	echo "[4] Conexiones activas"
	echo "[5] Salir"
	read CHOISE

	case $CHOISE in
		1)
			echo "[1] Mapeo de red con Netcat";;
		2)
			initApache;;
		3) 
			echo "[3] Enumeracion de dominios";;
		4)
			showActiveConnections;;
		5)
			closeProgram;;
		*)
			echo "Ingrese una opcion valida";;
	esac
}

# Entry point
showMenu
