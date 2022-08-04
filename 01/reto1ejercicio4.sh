!/bin/bash
# Programa para realizar algunas operaciones utilitarios de Postgres
echo " Este script de bash descarga el contenido de la página web 
"https://es.wikipedia.org/wiki/DevOps" a un fichero
Y busca en el mismo una palabra dada (esta se pasará por parametro) y 
muestra por pantalla el número de linea donde aparece. "

curl -# -O -k https://es.wikipedia.org/wiki/DevOp
read -p "¿Que palabra quieres buscar en el contenido? " palabra
i=0
while IFS= read -r line
do
  ((i=i+1))
  if [[ $line =~ $palabra ]]
  then
     echo "La palabra aparece el la linea $i"
  fi
done < DevOp
