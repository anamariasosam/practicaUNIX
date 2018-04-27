passwd
date
who
echo "Hola"
man date
df
du
ls
mkdir dir1
rmdir dir1
pwd
cd dir1
cd ../..
cd 
pico proci
clear
sleep 4 (n segundos)
ls -l 
$HOME # Mi ruta

sh prac1 # Ejecuta el programa prac 1

# Manipulacion de archivos
cp
cp prac1 prac2 # copio el archivo o lo creo, sobreescribiendo
mv
mv prac prac1 # cambio el nombre o lo muevo
rm # borra el archivo
rm * -r # borra TOOODOOO
cat prac1 # Imprime el archivo
head -n archivo # Muesta las primeras n lineas del archivo -n: default 10
tail -n archivo # Muestra las ultimas n lineas del archivo -n: default 10

# Muestra las primeras 20 lineas del archivo, y se queda esperando una orden.
# :q, salir
# enter, la siguiente linea
# barra espaciadora, las siguientes 20 lineas
more prac1 



# wc archivo : Cuenta las lineas, palabras y caracteres de un archivo 
wc prac3

# Contar solo las lineas
wc -l prac3 

# Contar solo las palabras
wc -w prac3 

# Contar solo las caracteres
wc -c prac3 

# Contar solo las lineas y palabras
wc -lw prac3 

# La salida estandar de UNIX es la pantalla, se puede modificar de la siguiente manera

# **** REDIRECCIONAMIENTO DE LA SALIDA DE UNI *****

# SIGNO MAYOR: La salida se va para un archivo, si el archivo ya existe, lo sobreescribe 
who > NombreArchivo

# MAYOR MAYOR: Adicion la salida al final del archivo  
who >> usuarios

# PIPELINE | : La salida del comando de la izquierda del | se convierte en la entrada del comando de la derechawho 
who | wc -l

# **** REDIRECCIONAMIENTO DE LA ENTRADA DE UNIX *****


# La entrada estandar de UNIX es el teclado, esta puede redireccionarse con el signo menor 

# WALL
wall Mensajeee

# No recibir mas mensaje
mesg n

# Volver a recibir mensaje
mesg y

# Escribirle a un usuario especifico
write ingsis05

# ********PERMISOS UNIX********

# 1 Lectura
# 2 Escritura
# 3 Ejecucion

# Propetiario, Grupo del propietario, Otros usuarios, ALL  
