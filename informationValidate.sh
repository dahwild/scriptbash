# ! /bin/bash
# Programa para ejemplificar como capturar la informaciòn del usuario y validarla utilizando expresiones regulares
# Autor: Wilder David

#Definición de las expresiones regulares
identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US$'
fechaNacimientoRegex='^19|20[0-8]{2}[1-12][1-31]$'

#Se solicita información del usuario
echo "Expresiones Regulares"
read -p "Ingresar una identificación: " identificacion
read -p "Ingresar la iniciales de un país [EC,COL,US]: " pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]: " fechaNacimiento

#Validación Identificación
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificación $identificacion válida"
    else
    echo "identificación $identificacion inválida"
fi


#Validación País
if [[ $pais =~ $paisRegex ]]; then
    echo "País $pais válido"
    else
    echo "País $pais inválido"
fi


#Validación Fecha Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento válida"
    else
    echo "Fecha Nacimiento $fechaNacimiento inválida"
fi
