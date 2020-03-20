# ! /bin/bash
# Programa para ejemplificar el uso de la entecia de decisión if, else if, else
# Autor: Wilder David

notaClase=0
edad=0

echo "Ejemplo sentencia If -else"
read -p "Cuál es su edad:" edad
if [ $edad -le 18 ]; then
    echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta y puede votar"
else
    echo "La persona es adulto mayor y puede votar"
fi
