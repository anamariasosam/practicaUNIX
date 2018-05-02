echo "Ingrese nombre del archivo a copiar"
read archivo1

if test -f $archivo1
then
  echo "¿Que nombre le desea poner al archivo copiado de $archivo1? Luego Presione enter"
  read archivo2
  cp $archivo1 $archivo2
else
  echo "$archivo1 no existe"
fi
