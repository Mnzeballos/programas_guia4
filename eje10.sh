#! /bin/bash
#Imprima la RAM de su máquina
sudo dmidecode --type memory | grep 'Maximum Capacity'