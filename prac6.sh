function mensaje_error {
  clear
  echo "Error el valor debe estar entre 1 - $1"
  sleep 2
  clear
}

function ejecutar_comando {
  clear
  $1
  sleep 2
  clear
}

function crear_directorio {
  clear
  echo "Ingrese el nombre del directorio a crear. Luego Presione Enter"
  read nombre_directorio

  if test -d $nombre_directorio
  then
    clear
    echo "$nombre_directorio ya existe"
    sleep 2
    crear_directorio
  else
    echo "Creando directorio: $nombre_directorio"
    mkdir $nombre_directorio
    echo "Directorio creado con exito"
    ls
  fi
  sleep 4
  clear
}

function borrar_directorio {
  clear
  echo "Ingrese el nombre del directorio a borrar. Luego Presione Enter"
  read nombre_directorio

  if test -d $nombre_directorio
  then
    clear
    echo "Borrando directorio $nombre_directorio ..."
    rmdir $nombre_directorio
    echo "Directorio borrado con exito"
    ls
  else
    clear
    echo "$nombre_directorio no existe"
    sleep 2
    borrar_directorio
  fi
  sleep 4
  clear
}

function copiar_archivo {
  clear
  echo "Ingrese el nombre del archivo a copiar. Luego Presione Enter"
  read nombre_archivo_1

  if test -f $nombre_archivo_1
  then
    clear
    echo "¿Que nombre le desea poner al archivo copiado de $nombre_archivo_1? Luego Presione Enter"
    read nombre_archivo_2
    echo "Copiando el archivo $nombre_archivo_1 en $nombre_archivo_2"
    cp $nombre_archivo_1 $nombre_archivo_2
    echo "Archivo copiado con exito"
    ls
  else
    clear
    echo "$nombre_archivo_1 no existe"
    sleep 2
    copiar_archivo
  fi
  sleep 4
  clear
}

function renombrar_archivo {
  clear
  echo "Ingrese el nombre del archivo que desear renombrar. Luego Presione Enter"
  read nombre_archivo_1

  if test -f $nombre_archivo_1
  then
    clear
    echo "¿Que nombre le desea poner al archivo? Luego Presione Enter"
    read nombre_archivo_2
    echo "Renombrando el archivo $nombre_archivo_1 a $nombre_archivo_2"
    mv $nombre_archivo_1 $nombre_archivo_2
    echo "Archivo renombrado con exito"
    ls
  else
    clear
    echo "$nombre_archivo_1 no existe"
    sleep 2
    renombrar_archivo
  fi
  sleep 4
  clear
}

function visualizar_archivo {
  clear
  echo "Ingrese el nombre del archivo a visualizar. Luego Presione Enter"
  read nombre_archivo

  if test -f $nombre_archivo
  then
    clear
    more $nombre_archivo
  else
    clear
    echo "$nombre_archivo no existe"
    sleep 2
    visualizar_archivo
  fi
  sleep 4
  clear
}

function borrar_archivo {
  clear
  echo "Ingrese el nombre del archivo a borrar. Luego Presione Enter"
  read nombre_archivo

  if test -f $nombre_archivo
  then
    clear
    echo "Borrando archivo $nombre_archivo ..."
    rm $nombre_archivo
    echo "Archivo borrado con exito"
    ls
  else
    clear
    echo "$nombre_archivo no existe"
    sleep 2
    borrar_archivo
  fi
  sleep 4
  clear
}

function modificar_permisos_archivo {
  clear
  echo "Ingrese el nombre del archivo que desea modificar los permisos. Luego Presione Enter"
  read nombre_archivo

  if test -f $nombre_archivo
  then
    clear
    echo "¿Que permisos $nombre_archivo?. Luego Presione Enter"
    read permisos
    echo $permisos
  else
    clear
    echo "$nombre_archivo no existe"
    sleep 2
    modificar_permisos_archivo
  fi
  sleep 4
  clear
}

function usuarios_conectados {
  clear
  echo "Mostrando nombre de usuarios conectados"
  sleep 4
  clear
}

function sistema_de_archivos {
  clear
  while true
  do
    echo "Menú Sistema de archivos"
    echo "1. CREAR DIRECTORIO"
    echo "2. COPIAR ARCHIVOS"
    echo "3. MODIFICAR PERMISOS A UN ARCHIVO"
    echo "4. VISUALIZAR EL CONTENIDO DE UN ARCHIVO"
    echo "5. BORRAR UN ARCHIVO"
    echo "6. CAMBIAR EL NOMBRE DE UN ARCHIVO"
    echo "7. BORRAR UN DIRECTORIO"
    echo "8. REGRESAR"
    echo "Seleccione la opción deseada:"
    read opcion
    case $opcion in
      1) crear_directorio;;
      2) copiar_archivo;;
      3) modificar_permisos_archivo;;
      4) visualizar_archivo;;
      5) borrar_archivo;;
      6) renombrar_archivo;;
      7) borrar_directorio;;
      8) menu_principal;;
      *) mensaje_error 8;;
    esac
  done
}

function usuarios {
  clear
  while true
  do
    echo "Menu Varios Usuarios"
    echo "1. MOSTRAR NOMBRE DE USUARIOS CONECTADOS"
    echo "2. MOSTRAR NUMERO DE USUARIOS CONECTADOS"
    echo "3. AVERIGUAR SI UN USUARIO ESTA CONECTADO"
    echo "4. ENVIAR MENSAJE A UN USUARIO"
    echo "5. REGRESAR"
    echo "Seleccione la opción deseada:"
    read opcion
    case $opcion in
      1) usuarios_conectados;;
      2) echo "MOSTRAR NUMERO DE USUARIOS CONECTADOS";;
      3) echo "AVERIGUAR SI UN USUARIO ESTA CONECTADO";;
      4) echo "ENVIAR MENSAJE A UN USUARIO";;
      5) menu_principal;;
      *) mensaje_error 5;;
    esac
  done
}

function comandos_generales {
  clear
  while true
  do
    echo "Menú Comandos Generales"
    echo "1. VISUALIZAR HORA DEL SISTEMA"
    echo "2. PATH O RUTA ACTUAL"
    echo "3. CAMBIO DE PASSWORD"
    echo "4. MOSTRAR DISCO LIBRE"
    echo "5. MOSTRAR DISCO UTILIZADO"
    echo "6. VISUALIZAR PROCESOS ACTIVOS"
    echo "7. REGRESAR"
    echo "Seleccione la opción deseada:"
    read opcion
    case $opcion in
      1) ejecutar_comando date;;
      2) ejecutar_comando pwd;;
      3) ejecutar_comando passwd;;
      4) ejecutar_comando df;;
      5) ejecutar_comando du;;
      6) ejecutar_comando ps;;
      7) menu_principal;;
      *) mensaje_error 7;;
    esac
  done
}

function menu_principal {
  clear
  while true
  do
    echo " MENU PRINCIPAL "
    echo "1. COMANDOS GENERALES"
    echo "2. USUARIOS"
    echo "3. SISTEMA DE ARCHIVOS"
    echo "4. TERMINAR"
    echo "Seleccione la opción deseada. Luego Presione Enter"
    read opcion
    case $opcion in
      1) comandos_generales;;
      2) usuarios;;
      3) sistema_de_archivos;;
      4) exit;;
      *) mensaje_error 4;;
    esac
  done
}

menu_principal
