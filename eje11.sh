#Desafío: Cree un programa en bash que lea la cantidad de bytes que recibe su placa de red
#(ver el archivo /sys/class/net/enpXsX/statistics), cada un segundo, y lo guarde en el archivo /tmp/datos.
#El archivo debe contenener, en cada fila, primero la hora, y separado por un espacio, el tráfico recibido.
#Luego, debe procesar ese archivo para graficar el tráfico de red.

#less /sys/class/net/enp2s0/statistics/rx_bytes
cat /sys/class/net/enp2s0/statistics/rx_bytes
bytes=$(cat /sys/class/net/enp2s0/statistics/rx_bytes)

#touch --directory /tmp/datos --name rx_bytes
#mktemp --directory /tmp/datos \--name rx_bytes 
TempFile=$(mktemp -p /tmp/datos --suffix .manu)

echo $bytes >> $TempFile
echo $TempFile