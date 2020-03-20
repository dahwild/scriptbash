# ! /bin/bash
# Programa para ejemplificar el uso de la entecia de decisión if, else.
# Autor: Wilder David

notaClase=0
edad=0

echo "Ejemplo sentencia If -else"
read -n1 -p "Indique cuál es su nota (1-9):" notaClase
echo -e "\n"

if (( $notaClase >=7 )); then
    echo "El alumno aprueba la materia"
else
    echo "el alumno repueba la materia"
fi

read -p "Cuál es su edad:" edad
if [ $edad -le 18 ]; then
    echo "La persona no puede votar"
else
    echo "La persona puede votar"
fi
