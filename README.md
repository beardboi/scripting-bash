## Scripting in Linux Bash ###

Script realizado para la asignatura de Seguridad TI de la Universidad Católica del Norte.

## Uso ##

El script cuenta con las siguientes funciones:

1. Mapeo de red con Netcat: Se requiere que la herramienta realice la herramienta netcat como
mapeador de puertos, este debe evitar la búsqueda de DNS, si la conexión no se establece después
de 2 segundos se termina y continua con los demás puertos. El rango por escanear va de 1 – 9000,
puede utilizar el manual de la herramienta (#man nc ó #nc -h).

2. Iniciar servidor Apache: Se debe iniciar el servicio de Apache2.

3. Enumeración de dominios: Realizar un script que reciba el dominio como parámetro y que haga
una enumeración de esta, utilizando alguna herramienta de enumeración de dominios incluidas en
kali Linux.

4. Conexiones activas: Se debe mostrar todas las conexiones activas de la maquina host.

5. Salir: Al seleccionar esta opción el programa debe terminar su ejecución.
