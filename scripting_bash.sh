#!/bin/bash

# Opcion 1.
run_netcat() {
	clear
	echo ""
	echo "Corriendo netcat..."
	echo ""
	for i in $(seq 1 65535); do nc -nvz -w 1 127.0.0.1 $i 2>&1; done | grep -v "refused"
	show_menu	
}

# Option 2.
init_apache() {
	clear
	status=$(service apache2 status)
	if [[ $status == *"active (running)"* ]]; then
		echo "####################################"
		echo "#  El servicio ya esta corriendo   #"
		echo "####################################"
	else 
		echo "####################################"
		echo "#    Iniciando servidor Apache...  #"
		echo "####################################"
		echo ""
		sudo service apache2 start
	fi
	echo ""
	show_menu
}

# Opcion 3.
run_fierce() {
	clear
	echo "#################################################"
	echo "# [3] Enumeracion de dominios utilizando Fierce #" 
	echo "############### Ingrese el dominio:##############"
	read DOMAIN
	echo ""
	fierce --domain $DOMAIN
	echo "..."
}

# Opcion 4.
show_active_con() {
	clear
	echo "Listando conexiones activas..."
	echo ""
	sudo netstat -notapu
	echo ""
	show_menu
}


# Opcion 5.
close_program() {
	echo "#########################"
	echo "# Cerrando programa...  #"
	echo "#########################"
	exit 1
}

# Menu principal
show_menu() {
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
	echo ""
	read OPTION

	case $OPTION in
		1)
			run_netcat;;
		2)
			init_apache;;
		3) 
			run_fierce;;
		4)
			show_active_con;;
		5)
			close_program;;
		*)
			echo "Ingrese una opcion valida";;
	esac
}

# Entry point
show_menu
