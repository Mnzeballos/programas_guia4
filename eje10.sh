#! /bin/bash
#Imprima la RAM de su máquina
Capacidad=$(sudo dmidecode --type memory | grep 'Maximum Capacity')
echo ("Capacidad máxima de la RAM: $Capacidad")