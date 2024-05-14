#!/bin/bash

# Solicitar el sueldo
echo "¿Cuál es su sueldo?"
read sueldo

# Solicitar el rango
echo "¿Cuál es su rango?"
read rango

# Calcular y mostrar el sueldo según el rango
if [ "$rango" -eq 1 ]; then
    sueldo_calculado=$(echo "$sueldo * 0.83" | bc -l)
    echo "El sueldo es: $sueldo_calculado para el rango: 1"
elif [ "$rango" -eq 2 ]; then
    sueldo_calculado=$(echo "$sueldo * 1.2" | bc -l)
    echo "El sueldo es: $sueldo_calculado para el rango: 2"
else
    sueldo_calculado=$(echo "$sueldo * 5" | bc -l)
    echo "El sueldo es: $sueldo_calculado para el rango: 3"
fi
