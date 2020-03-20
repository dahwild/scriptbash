# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia CASE
# Autor: Wilder David

opcion=""

echo "Ejemplo sentencia CASE"
read -n1 -p "Ingrese una opción de la A - Z:" opcion
echo -e "\n"

case $opcion in 
    "A") echo -e "\nOperacion Guardar archivo";;
    "B") echo "Operación Eliminar archivo";;
    [C-E]) echo "No está implementada la operación";;
    "*") echo "opción Incorreta"
esac
