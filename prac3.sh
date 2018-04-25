clear

# Mensaje de bienvenida y nombre del usuario 
echo '****** Practica # 3 ******'
echo '****** Ana Maria Sosa ******'
sleep 5
clear

# Fecha y Hora del Sistema
echo 'La hora del sistema'
date
sleep 5
clear

# Nombre de usuario en linea
echo 'Usuario en linea en el momento'
who
sleep 5
clear

# Disco libre
echo 'Disco libre'
df
sleep 5
clear

# Disco Utilizado
echo 'Disco Utilizado'
du
sleep 5
clear

# Archivos y directorios de la ruta actual
echo 'Archivos y directorios de la ruta actual'
ls
sleep 5
clear

# Ruta en la que se está posicionado
echo 'Ruta en la que se está posicionado'
pwd
sleep 5
clear 

# Crear un directorio llamado UDEM
echo 'Creando directorio llamado UDEM'
mkdir UDEM
ls
sleep 5
clear

# Realizar una copia del archivo prac1 con el mismo nombre y el directorio UDEM
echo 'Copiando el archivo prac1 dentro del directorio UDEM'
cp prac1 UDEM/prac1
sleep 5
clear

# Verificar que el archivo prac1 haya quedado en esa ruta
echo 'Verificando copia del archivo dentro de UDEM'
cd UDEM
ls
sleep 5
clear

# Borrar el directorio UDEM y sus archivos
cd ..
rm -r UDEM
sleep 5
clear

# Verificar que se haya borrado
echo 'Verficacion de la eliminacion del directorio UDEM'
ls
sleep 5
clear

# Mensaje de salida
echo '****** ADIOS ******'
echo 'Hasta pronto, gracias por su visita!'
