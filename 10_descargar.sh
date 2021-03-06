10_download.sh                                                                                      0000755 0001750 0001750 00000000415 13627247712 013351  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el uso de la descarga de informaciòn desde internet utilizando el comando wget

echo "Descargar información de Internet"
wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.0-M1/bin/apache-tomcat-10.0.0-M1-deployer.zip
                                                                                                                                                                                                                                                   11_ifElse.sh                                                                                        0000755 0001750 0001750 00000000753 13627307371 012755  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
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
                     12_ifElseIfElse.sh                                                                                  0000755 0001750 0001750 00000000645 13627310247 014042  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
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
                                                                                           13_ifAnidados.sh                                                                                    0000755 0001750 0001750 00000001100 13627315206 013570  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
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

                                                                                                                                                                                                                                                                                                                                                                                                                                                                14_expresionesCondicionales.sh                                                                      0000755 0001750 0001750 00000001703 13627536114 016603  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Autor: Wilder David

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su paìs: " pais
read -p "Ingrese el path de su archivo" pathArchivo

echo -e "\nExpresiones Condicionales con números"
if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolecente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es del sur de America"
else
    echo "Se desconoce la nacionalidad"
fi


echo -e "\nExpresiones Condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi
                                                             15_case.sh                                                                                          0000755 0001750 0001750 00000000632 13627512703 012456  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
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
                                                                                                      16_arreglos.sh                                                                                      0000755 0001750 0001750 00000002075 13627551273 013372  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el uso de arreglos
#Autor: Wilder David

arregloNumeros=( 1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

# Imprimir todos los valores
echo "Arreglo de números: ${arregloNumeros[*]}"
echo "Arreglo de cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Números: ${#arregloNumeros[*]}"
echo "Tamaño Areglo de cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Areglo de Rangos: ${#arregloRangos[*]}"

#Imprimir la posición 3 del arreglo de número, cadenas y rango
echo "Posición 3 Arreglo de números: ${arregloNumeros[3]}"
echo "Posición 3 Arreglo de cadenas: ${arregloCadenas[3]}"
echo "posición 3 Arreglo de Rangos: ${arregloRangos[3]}"

#Añadir y Eliminar valores en un arreglo
arregloNumeros[7]=20
#Unset sirve para eliminar datos de la posición cero según el ejemplo
unset arregloNumeros[0]
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Tamaño arreglo de Números: ${#arregloNumeros[*]}"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   17_forLoop.sh                                                                                       0000755 0001750 0001750 00000001160 13627556275 013176  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
#Autor: Wilder David

arregloNumeros=( 1 2 3 4 5 6)
echo "Iterar en la Lista de Números"
for num in ${arregloNumeros[*]}
do
    echo "Numero: $num"
done

echo "Iterar en la lista de cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombre: $nom"
done

echo "Iterar en Archivos"
for file in *
do 
    echo "nombre archivo: $file"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do
    echo "nombre: $fil"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Numero;$i"
done


                                                                                                                                                                                                                                                                                                                                                                                                                18_whileloop.sh                                                                                     0000755 0001750 0001750 00000000327 13627741305 013553  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración while
#Autor: Wilder David

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$((numero +1 ))
done
                                                                                                                                                                                                                                                                                                         19_loopAnidados.sh                                                                                  0000755 0001750 0001750 00000000343 13627742122 014162  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el uso de los Loops Anidados
#Autor: Wilder David

echo "Loops Anidados"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo:$fil _ $nombre"
    done
done
                                                                                                                                                                                                                                                                                             1_utilityPostgres.sh                                                                                0000764 0001750 0001750 00000000141 13625526715 014711  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # !/bin/bash
# Programa para realizar operaciones utilitarias en Postgres
echo "Hola Bienvenido"
                                                                                                                                                                                                                                                                                                                                                                                                                               20_breakContinue.sh                                                                                 0000755 0001750 0001750 00000000606 13627744075 014342  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el uso de Break and Continue
#Autor: Wilder David

echo "Sentencias break y Continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "10_download.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        else
            echo "Nombre archivo:$fil _ $nombre"
        fi
    done
done
                                                                                                                          21_menuOptions.sh                                                                                   0000755 0001750 0001750 00000002376 13627747272 014102  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: Wilder David

opcion=0

#Asé se declara un while infinito
while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opcione
    echo "_________________________________________"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "_________________________________________"
    echo "              MENÚ PRINCIPAL             "
    echo "_________________________________________"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"

    # Leer los datos de usurario - capturar información
    read -n1 -p "Ingrese una opción [1-5]: " opcion

    # Validar la opcion ingresada
    case $opcion in
        1)
            echo -e "\nInstalar Postgres....."
            sleep 3
            ;;
        2) 
            echo -e "\nDesintalando Postgres....."
            sleep 3
            ;;
        3)  
            echo -e "\nSacar Respaldo....."
            sleep 3
            ;;
        4)  
            echo -e "\nRestaurar Respaldo....."
            sleep 3
            ;;
        5)  echo -e "\nSALIR DEL PROGRAMA"
            exit 0
            ;;
    esac
done



                                                                                                                                                                                                                                                                  22_archivosDirectorios.sh                                                                           0000755 0001750 0001750 00000000605 13632053720 015561  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar la creación de archivos y directorios
#Autor: Wilder David

echo "Archivos - Directorios"
# Recibir argumento
if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [ $1 = "f" ]; then
    touch $2
    echo "archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opción: $1"
fi
                                                                                                                           23_writeFile.sh                                                                                     0000755 0001750 0001750 00000000333 13632063425 013470  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar como se escribe en un archivo
#Autor: Wilder David

echo "Escribir en un Archivo"

echo "Guardar informaciòn utilizando echo" >> $1

#adición multilinea
cat <<EOM>>$1
$2
EOM
                                                                                                                                                                                                                                                                                                     24_readFile.sh                                                                                      0000755 0001750 0001750 00000000700 13632064627 013255  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar como se lee en un archivo
#Autor: Wilder David

echo "leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

#Se utiliza la variable especial IFS (Internal File Separator) para evitar que los espacios en blanco se recorten al inicio al final.
echo -e "\nLeer archivos lìnea por lìnea while"
while IFS= read linea
do
    echo "$linea"
done < $1

                                                                25_tar.sh                                                                                           0000755 0001750 0001750 00000000274 13632604452 012333  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando TAR
#Autor: Wilder David

echo "Empaquetar todos los scripts de la carpeta $PWD"
tar -cvf shellCourse.tar *.sh
                                                                                                                                                                                                                                                                                                                                    26_gzip.sh                                                                                          0000755 0001750 0001750 00000000535 13632604744 012523  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando GZIP
#Autor: Wilder David

echo "Empaquetar todos los scripts de la carpeta $PWD"
tar -cvf shellCourse.tar *.sh

#Cuando empaquetamos con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo, con ratio 9"
gzip -9 9_options.sh
                                                                                                                                                                   27_pbzip2.sh                                                                                        0000755 0001750 0001750 00000000463 13632606076 012761  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando PBZIP
#Autor: Wilder David

echo "Empaquetar todos los scripts de la carpeta $PWD"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
                                                                                                                                                                                                             2_variable_2.sh                                                                                     0000755 0001750 0001750 00000000175 13625543777 013504  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # !/bin/bash
# programa para revisar la declaraciòn de variables

echo "opción nombre pasada del script anterior: $nombre"
                                                                                                                                                                                                                                                                                                                                                                                                   2_variable.sh                                                                                       0000755 0001750 0001750 00000000451 13625544212 013241  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # !/bin/bash
# programa para revisar la declaraciòn de variables

opcion=0
nombre=Marco

echo "Opción: $opcion y Nombre: $nombre"

#Exportar la variable nombre para que estè disponble a los demás procesos
export nombre

#llamar al siguiente script para recuperar la variable
./2_variable_2.sh
                                                                                                                                                                                                                       3_tipoOperadores.sh                                                                                 0000755 0001750 0001750 00000001631 13625551470 014461  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Prorama para revisar los tipos de Operadores
# Autor: Wilder David

numA=10
numB=4

echo "Operadores Aritmeticos"
echo "Números: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))



echo -e "\nOperadores Relacionales"
echo "Números: A=$numA y B=$numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA > numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo -e "\nOperadores de Asignación"
echo "Números: A=$numA y B=$numB"
echo "Sumar A += B " $((numA += numB))
echo "Restar A -= B " $((numA -= numB))
echo "Multiplicar A *= B " $((numA *= numB))
echo "Dividir A /= B " $((numA /= numB))
echo "Residuo A %= B " $((numA %= numB))
                                                                                                       4_argumentos.sh                                                                                     0000755 0001750 0001750 00000000444 13627626071 013652  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar el paso de argumentos
# Autor: Wilder David

nombreCurso=$1
horarioCurso=$2

echo "el nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El número de parámetros enviados es: $#"
echo "Los parametros enviados son: $*"

                                                                                                                                                                                                                            5_subtitucionCommand.sh                                                                             0000755 0001750 0001750 00000000577 13625631706 015344  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y almacenarlos en una variable, para su posterior utilización
# Autor: Wilder David

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo -e "\nLa ubicación actual es la siguiente: $ubicacionActual"
echo -e "\nInformación del Kernel: $infoKernel"
echo -e "\nel contenido de la carpeta es: `ls -la`"
                                                                                                                                 6_readEcho.sh                                                                                       0000755 0001750 0001750 00000000604 13625564736 013207  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar como capturar la informaciòn del usuario utilizando el comando echo, read y $REPLY
# Autor: Wilder David

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una Opción: "
read
option=$REPLY
echo -n "Ingresar el Nombre del Archivo del Backup: "
read
backupName=$REPLY
echo "Opción: $option, backupName:$backupName"

                                                                                                                            7_read.sh                                                                                           0000755 0001750 0001750 00000000535 13625565454 012412  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar como capturar la informaciòn del usuario utilizando el comando read
# Autor: Wilder David

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una Opción: " option
read -p "Ingresar el Nombre del Archivo del Backup: " backupName
echo "Opción: $option, backupName:$backupName"

                                                                                                                                                                   8_readValidate.sh                                                                                   0000755 0001750 0001750 00000000740 13625620176 014054  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para ejemplificar como capturar la informaciòn del usuario y validarla
# Autor: Wilder David

option=0
backupName=""
clave=""


echo "Programa Utilidades Postgres"
#Acepta el ingreso de información de solo un caracter
read -n1 -p "Ingresar una Opción: " option
echo -e "\n"
read -n10 -p "Ingresar el Nombre del Archivo del Backup: " backupName
echo -e "\n"
echo "Opción: $option, backupName:$backupName"
read -s -p "Clave:" clave
echo "clave: $clave"
                                crearUsuario.sh                                                                                     0000755 0001750 0001750 00000001305 13625642253 013702  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
#Script para la creación de un usuario en ubuntu
echo "|--------------------------------Ubuntu-----------------------------------|"
echo "|---------------------------CreacionDeUsuario-----------------------------|"
echo "\n"
echo "Bienvenido este escript le permitirá crear un nuevo usuario"

echo "\n"
echo "\n Escriba el nombre del usuario a crear"
read var1
sudo adduser -m $var1
echo "\n EL usuario creado es $var1"
echo "\n"
echo "|------------------------------Contraseña------------------------------|"
echo "|----------------------AsignarContraseñaAlUsuario----------------------|"
echo "\n"
echo "\n Escriba la contraseña para el usuario $var1"
read $var2
sudo passwd $var2







                                                                                                                                                                                                                                                                                                                           informationValidate.sh                                                                              0000755 0001750 0001750 00000002120 13625617353 015234  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                matarprocesos.sh                                                                                    0000755 0001750 0001750 00000001766 13627632457 014142  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Script para matar procesos
# Autor: Jessica - Santamaría jessica.santamaria@ibm.com
echo "----------------MATAR PROCESO STERLING---------------"
opcion=""
echo "--------------------Nombre procesos------------------"
echo -e "\n"
ds=DefaultServer
cg=Cognos
ps=PerimeterServer
cio=cdinterop
js=jenes

echo "1 $ds " 
echo "2 $cg" 
echo "3 $ps" 
echo "4 $cio" 
echo "5 $js"

read -n1 -p "Marque el número del proceso que desea matar: " opcion
echo -e "\n"

case $opcion in
"1") echo "Se procederá a matar el proceso $ds "
kill -9 `ps -ef|grep $ds |awk '{print $2}'`
echo "";;
"2") echo "Se procederá a matar el proceso $cg "
kill -9 `ps -ef|grep $cg |awk '{print $2}'`
echo "";;
"3") echo "Se procederá a matar el proceso $ps "
kill -9 `ps -ef|grep $ps |awk '{print $2}'`
echo "";;
"4") echo "Se procederá a matar el proceso $cio "
kill -9 `ps -ef|grep $cio |awk '{print $2}'`
echo "";;
"5") echo "Se procederá a matar el proceso $js "
kill -9 `ps -ef|grep $js |awk '{print $2}'`
echo "";;
esac
          solicitaInformacion.sh                                                                              0000755 0001750 0001750 00000001333 13627254164 015235  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Reto 2: Programa para solicitar información
echo -e "\n"
echo "--------------Información Básica--------------"
echo "--Por favor ingrese la siguiente información--"
echo -e

echo "Ingresa su nombre"
read nombre
echo -e "\n"

echo "Ingrese sus apellidos"
read apellido
echo -e "\n"

echo "Ingrese su edad"
read -n2 edad
echo -e "\n"
 
echo "Ingrese dirección de vivienda"
read -n25 direccion
echo -e "\n"

echo "Ingrese su número telefonico"
read -n10 telefono
echo -e "\n"

echo "Bienvenido(a) $nombre $apellido, su edad es $edad, la dirección donde resides es $direccion y el número telefonico donde te podemos contactar es $telefono"
echo -e "\n"
echo "----------------Muchas gracias----------------"




                                                                                                                                                                                                                                                                                                     solicitarIngresarInfo.sh                                                                            0000755 0001750 0001750 00000003130 13627546035 015537  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # !/bin/bash
# Programa para ejemplificar el uso de la sentencia CASE
# Autor: Wilder David

opcion=""

echo "--------------Ejemplo sentencia CASE-------------"
echo "Que operación desea realizar:"
echo "1. Verificar Nota"
echo "2. Validar pais"
echo "3. Ubicación Actual"
echo "4. Saber si una aplicación está instalada"
echo "5. Validar si un fichero existe"

read -n1 -p "Ingrese un número del 1 - 5 según la operación que desee realizar " opcion
echo -e "\n"

case $opcion in 
    "1") 
    read -p "ingrese la nota del examen 1 - 9: " nota
    if (( $nota < 5 )); then
        echo "El estudiante perdió el examen ";
    elif (( $nota >= 5 )) && (( $nota <= 8 )); then
        echo "La persona tuvo SOBRESALIENTE ";
    else
        echo "La persona sacó una nota EXCELENTE";
    fi;;      
    
    "2") 
    read -p "ingrese el pais de la persona Colombia, Japon, China, :" pais
    if  [ $pais = "Colombia" ]; then
        echo "La persona pertenece a Sur America"
    elif [ $pais = "Japon" ] || [ $pais = "China" ]; then
        echo "La Persona es ASIATICA"
    else 
        echo "La persona puede ser de NORTE Americana, Africana, entre otras..."
    fi;;
    
    "3") 
    echo -e "\nEsta es la ruta donde se encuentra actualmente: "
    pwd
    echo -e "\n";;
    "4")
    read -p "ingrese el nombre de la aplicación: " aplicacion
    dpkg -s $aplicacion
    echo -e "\n";;
    
    "5")
    read -p "ingrese el nombre del fichero: " filePath
    if [-d $filePath ]; then
        echo "el fichero existe"
    else
        echo "el fichero no existe"
    fi;;
    "*") echo "opción Incorreta"
esac
                                                                                                                                                                                                                                                                                                                                                                                                                                        utilityHost.sh                                                                                      0000755 0001750 0001750 00000000310 13625562510 013567  0                                                                                                    ustar   dahwild                         dahwild                                                                                                                                                                                                                # ! /bin/bash
# Programa para dos variables
# Autor: Wilder David

option=100
result=50

echo -e "\n Este es el valor asignado a option $option"
echo -e "\n Este es el valor asinado a result $result"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        