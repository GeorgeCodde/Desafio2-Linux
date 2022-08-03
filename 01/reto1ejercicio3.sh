
#!/bin/bash
# Programa para realizar algunas operaciones utilitarios de Postgres
echo "Hola este script realiza lo siguiente 
    Crea mediante comandos de bash la siguiente jerarquía de ficheros y directorios.

        foo/
        ├─ dummy/ 
        │  ├─ file1.txt 
        │  ├─ file2.txt
        ├─ empty/
    Donde file1.txt tiene el texto que el usuario ingresa y si no ingresa coloca 'Me encanta bash!!' 
    y despues vuelca el contenido de file1.txt a file2.txt y mueve file2.txt a la carpeta empty.  

    "

mkdir ./foo ./foo/dummy ./foo/empty
touch foo/dummy/file1.txt foo/dummy/file2.txt
read -p "Escriba el texto a ingresar en el archivo: " texto
if [[ "$texto" == "" ]]
then
    texto="Me encanta bash!!"
fi
echo $texto > foo/dummy/file1.txt
cat foo/dummy/file1.txt > foo/dummy/file2.txt
mv foo/dummy/file2.txt foo/empty