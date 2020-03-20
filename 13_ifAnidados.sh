# ! /bin/bash
# Programa para ejemplificar el uso de los if Anidados
# Autor: Wilder David

notaClase=0
continua=""

echo "Ejemplo sentencia If -else"
read -n1 -p "Indique cuál es su nota (1-9):" notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "si va a continuar estudiando en el mismo nivel (s/n)" continua
    if [ $continua = "S" ]; then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros, mucha suerte !!!"
    fi
else
    echo "el alumno repueba la materia"
fi

