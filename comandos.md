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
$HOME # La ruta default

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
-rw-rw-r-- 

# Modificar los permisos del archivos
chmod D1 D2 D3 nombreArchivo
D1: Dueño
D2: Grupo del propietario
D3: Otros Usuarios

chmod 710 usuarios


# Sin conocer los permisos actuales del archivo usuarios, adicione permiso de ejecucion a todo el mundo
u: usuario dueño
g: grupo del dueño
o: other no hacen parte del grupo del dueño
a: todos los archivos

        u     =   r
chmod [ g ] [ + ][w] archivo
        o     -   x
        a  
        
El primero y el último se puede combinar         

chmod a+x usuarios
# Quitar permiso de lectura y escritura a los usuarios que no son del grupo del dueño y a todos los que no son del grupo
chmod go-rw usuarios



a* : ana anita anitaa a1 a2 a3
a? : y a continuacion tiene solo un solo caracter : a1 a2 a3
a?? : ana a68
a[1-5] : a1 a2a 68 ana



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

## Leer por pantalla
```sh
echo "Ingrese Nombre y presione Enter"
read vble
echo $vble
```

## Condicionales

```sh
if condition
then
else
fi
```
| Condicionales | Que hace | 
| --------- |-------------|
| -eq |  = |
| -gl | >= |
| -gt | > |
| -le | <= |
| -lt | < |
|-ne | <> |

