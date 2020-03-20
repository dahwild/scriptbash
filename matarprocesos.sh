# ! /bin/bash
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
