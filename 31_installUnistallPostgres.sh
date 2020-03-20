# ! /bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: Wilder David

opcion=0

#función para instalar postgres
instalar_postgres () {
    echo -e "\n Verificar Instalación de Postgres ...."
    verifyInstall= $(which psql)
    if [ $? -ew 0 ]; then
        echo -e "\n Postgres ya se encuentra instalado en el equipo"
    else
        read -s -p "Ingresar contraseña de sudo: " password
        read -s -p "Ingresar contraseña a utilizar en postgres: " passwordPostgres
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER  USER postgres WITH PASSWORD '{$passwordPostgres}'; "
        echo "$password" | sudo -S systemctl enable postgresql.service 
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Función para desinstalar postgres
desinstalar_postgres () {
    read -s -p "Ingresar contraseña de sudo: " password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgresql
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Función para sacar respaldo postgres
sacar_respaldo () {
    echo "Sacar respaldo..."
    echo "Directorio Backup: $1"
}

#Función para restaurar respaldo postgres
restaurar_respaldo () {
    echo "Restaurar respaldo..."
    echo "Directorio respaldo: $1"
}


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
            instalar_postgres
            sleep 3
            ;;
        2) 
            desinstalar_postgres
            sleep 3
            ;;
        3)  
            read -p "Directorio de Backup" directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4)  
            read -p "Directorio de Respaldo" directorioRespaldos
            restaurar_respaldo $directorioRespaldos            
            sleep 3
            ;;
        5)  echo -e "\nSALIR DEL PROGRAMA"
            exit 0
            ;;
    esac
done



