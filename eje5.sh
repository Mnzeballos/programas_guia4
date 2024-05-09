#! /bin/bash
#Realice un programa que permita elegir un número natural entre el 1 y el 10, y lo
#compare con un número aleatorio. Imprima el resultado por pantalla
num=5
al=$(( $RANDOM % 9 + 1 ))
echo "Mi número $num vs un número al azar: $al"