#! /bin/bash
#Imprima la RAM de su máquina
#Memoria=$(sudo dmidecode --type memory)
#Capacidad=$($Memoria | grep 'Maximum Capacity')
#echo ("Capacidad máxima de la RAM:" $(sudo dmidecode --type memory))
echo "Capacidad máxima de la RAM:"
sudo dmidecode --type memory| grep -oP 'Maximum Capacity: \K[0-9]+'
