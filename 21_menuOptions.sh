# ! /bin/bash
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



