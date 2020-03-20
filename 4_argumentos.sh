# ! /bin/bash
# Programa para ejemplificar el paso de argumentos
# Autor: Wilder David

nombreCurso=$1
horarioCurso=$2

echo "el nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El número de parámetros enviados es: $#"
echo "Los parametros enviados son: $*"

