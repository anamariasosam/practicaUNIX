# UNIX

| Comando | Que hace |
| --------- |-------------|
|passwd | cambiar la contraseña |
| date | fecha actual |
| who | usuarios conectados|
| echo "Hola" | imprimir un mensaje|
| man date | guia de comandos|
| df | disco libre|
| du | disco utilizado |
| ls | lista de archivos y directorios|
| mkdir dir1 | crear directorio |
| rmdir dir1 | eliminar directorio |
| pwd | ruta actual |
| cd dir1 | cambiar de directorio |
| cd ../.. |  |
| cd | ir al root |
| pico proci | editar archivo |
| clear | limpiar la terminal |
| sleep 4 (n segundos) | crear tiempo de espera entre comandos |
| ls -l |  |
| $HOME  | La ruta default|
| sh prac1 | Ejecuta el programa prac 1 |

# Manipulacion de archivos
| Comando | Que hace |
| --------- |-------------|
| cp prac1 prac2 | copio el archivo o lo creo, sobreescribiendo |
| mv prac prac1 | cambio el nombre o lo muevo |
| rm | borra el archivo |
| rm * -r | borra TOOODOOO |
| cat prac1 | Imprime el archivo |
| head -n archivo | Muesta las primeras n lineas del archivo -n: default 10 |
| tail -n archivo | Muestra las ultimas n lineas del archivo -n: default 10 |
|wc prac3 |  Cuenta las lineas, palabras y caracteres de un archivo |
| more prac1 | Muestra las primeras 20 lineas del archivo, y se queda esperando una orden. |
| wc -l prac3 | Contar solo las lineas |
| wc -w prac3 | Contar solo las palabras |
| wc -c prac3 | Contar solo las caracteres |
| wc -lw prac3 | Contar solo las lineas y palabras |


# REDIRECCIONAMIENTO DE LA SALIDA DE UNIX

La salida estandar de UNIX es la pantalla, se puede modificar de la siguiente manera

| Tipo | Que hace | Comando |
| --------- |-------------|-------------|
| SIGNO MAYOR | La salida se va para un archivo, si el archivo ya existe, lo sobreescribe | who > NombreArchivo |
| MAYOR MAYOR | Adicion la salida al final del archivo  | who >> usuarios |
| PIPELINE  | La salida del comando de la izquierda del | se convierte en la entrada del comando de la derecha |
 ```
  who | wc -l
  ```
|

# REDIRECCIONAMIENTO DE LA ENTRADA DE UNIX

La entrada estandar de UNIX es el teclado, esta puede redireccionarse con el signo menor

# MENSAJES

| Comando | Que hace |
| --------- |-------------|
| wall Mensajeee | WALL |
| mesg n | No recibir mas mensaje |
| mesg y | Volver a recibir mensaje |
| write ingsis05 | Escribirle a un usuario especifico |


# PERMISOS UNIX

- Lectura
- Escritura
- Ejecucion

## Propetiario, Grupo del propietario, Otros usuarios, ALL  
-rw-rw-r--

## Modificar los permisos del archivos
```sh
chmod D1 D2 D3 nombreArchivo
```
- D1: Dueño
- D2: Grupo del propietario
- D3: Otros Usuarios

```sh
chmod 710 usuarios
```

Sin conocer los permisos actuales del archivo usuarios, adicione permiso de ejecucion a todo el mundo

- u: usuario dueño
- g: grupo del dueño
- o: other no hacen parte del grupo del dueño
- a: todos los archivos

```sh
        u     =   r
chmod [ g ] [ + ][w] archivo
        o     -   x
        a  
```
El primero y el último se puede combinar         
```sh
chmod a+x usuarios
```

Quitar permiso de lectura y escritura a los usuarios que no son del grupo del dueño y a todos los que no son del grupo

```sh
chmod go-rw usuarios
```

# MÁS COMANDOS

| Comando | Que hace |
| --------- |-------------|
| chmod +x a* | Permisos de ejecucion a un archivo que empieza por a |
| ps - | Mostrar los procesos activo |
| kill -9 proceso | Matar un proceso pero solo los mios|
| HOME | ruta default |
| PATH | ruta |
| LOGNAME |       |
| PS1="#" | Cuidadoo cambia el prompt      |
| diff prac1 prac2 | Muestra la diferencia entre dos archivos      |
| comm prac1 prac2 | Muestra las lineas en común entre dos archivos  |
| who > archivo1 | Guarda los usuarios conectados en el archivo 1 |
| cut -c1-10 archivo1 > archivo1 | Corta campos |
| sort - [option] | Ordene clasifica un archivo, opciones: n: Numericamente , r: Inverso, b: Ignore blancos |
| grep ingsis01 archivo1 | Muestra las lineas de archivo1 donde se encuentra ingsis01 |
| grep -v ingsis01 archivo1 | Muestra las lineas de archivo1 que no contienen ingsis01 |

# Leer por pantalla
```sh
echo "Ingrese Nombre y presione Enter"
read vble
echo $vble
```

# Condicionales

```sh
if condition
then
else
fi
```

```sh
echo "Ingreso notal del estudiante"
read nota

if test $nota -ge 4 -a $nota -le 5
then
  echo "$nota esta entre 4 y 5"
else
  echo "$nota no esta entre 4 y 5"
fi
```

| Operadores | Que hace |
| --------- |-------------|
| -eq |  = |
| -gl | >= |
| -gt | > |
| -le | <= |
| -lt | < |
|-ne | <> |
| -a | and |
| -o | or |

## Estructura condicional para archivos

| Comando | Definicion |
| --------- |-------------|
| -d | directorio |
| -f | archivo |
| -r | Archivo con permiso de lectura |
| -s | Archivo con longitud > 0 |
| -w | Archivo con permisos de escritura |
| -x | Archivo con permisos de ejecución |

# Estructuras Repetitivas
```sh
while condition
do

done
```

```sh
until condition
do

done
```

```sh
for $vble in <listaArchivos>
do

done
```

## Ejemplo: Menú
```sh
clear
while true
do
  echo " MENU PRINCIPAL "
  echo "1. COMANDOS GENERALES"
  echo "2. USUARIOS"
  echo "3. SISTEMA DE ARCHIVOS"
  echo "4. TERMINAR"
  echo "Seleccione un opcion"
  read opcion
  case $opcion in
    1) echo "Selecciono opcion 1";;
    2) echo "Selecciono opcion 2";;
    3) echo "Selecciono opcion 3";;
    4) echo "Selecciono opcion 4";;
    5) exit;;
    *) echo "Error el valor debe estar entre 1 - 4";;
  esac
done

```
