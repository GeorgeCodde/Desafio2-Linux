# Reto 1 - Linux

## Ejercicio 1 - Manejo de archivos

Crea mediante comandos de bash la siguiente jerarquía de ficheros y directorios.

```
foo/
├─ dummy/
│  ├─ file1.txt
│  ├─ file2.txt
├─ empty/
```

Donde file1.txt debe contener el siguiente texto:
`Me encanta bash!!`
Y file2.txt debe permanecer vacío.

### Respuesta a ejercicio 1

En el siguiente comando se crean los directorios

```
mkdir ./foo ./foo/dummy ./foo/empty
```

En el siguiente comando se listan para verificar su creación

```
ls -R -l
```

En el siguiente comando se crean los archivos file1.txt file2.txt

```
touch foo/dummy/file1.txt foo/dummy/file2.txt
```

Este comando inserta el texto solicitado al archivo

```
echo 'Me encanta bash!!' > foo/dummy/file1.txt
```

## Ejercicio 2 - Manejo de contenido de archivos

Mediante comandos de bash, vuelca el contenido de file1.txt a file2.txt y mueve file2.txt a la carpeta empty.
El resultado de los comandos ejecutados sobre la jerarquía anterior deben dar el siguiente resultado.

```
foo/
├─ dummy/
│  ├─ file1.txt
├─ empty/
  ├─ file2.txt
```

Donde file1.txt y file2.txt deben contener el siguiente texto:
`Me encanta bash!!`

### Respuesta a ejercicio 2

El comando copia el contenido de file1.txt a file2.txt

```
cat foo/dummy/file1.txt > foo/dummy/file2.txt
```

El comando mueve el archivo file2.txt a la carpeta empty

```
mv foo/dummy/file2.txt foo/empty
```

## Ejercicio 3 - Argumentos del script

Crear un script de bash que agrupe los pasos de los ejercicios anteriores y además permita establecer el texto de file1.txt alimentándose como parámetro al invocarlo.
Si se le pasa un texto vacío al invocar el script, el texto de los ficheros, el texto por defecto será:
`Que me gusta bash!!!!`

### Respuesta a ejercicio 3

El script se encuentra [aqui](https://github.com/GeorgeCodde/Desafio2-Linux/blob/entrega/01/reto1ejercicio3.sh)

```bash
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
    texto="Que me gusta bash!!!!"
fi
echo $texto > foo/dummy/file1.txt
cat foo/dummy/file1.txt > foo/dummy/file2.txt
mv foo/dummy/file2.txt foo/empty
```

## Ejercicio 4 - Opcional

Crea un script de bash que descargue el contenido de una página web a un fichero.
por ejemplo "https://es.wikipedia.org/wiki/DevOps"
Una vez descargado el fichero, que busque en el mismo una palabra dada (esta se pasará por parametro) y muestre por pantalla el número de linea donde aparece.

## Respuesta a ejercicio 4

El script es el siguiente

```bash
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
```
