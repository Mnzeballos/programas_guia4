#! /bin/bash
#Imprima la RAM de su máquina

echo "Capacidad máxima de la RAM:"
sudo dmidecode --type memory| grep -oP 'Maximum Capacity: \K[0-9]+'
