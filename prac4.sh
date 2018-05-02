echo "Ingreso notal del estudiante"
read nota

if test $nota -ge 4 -a $nota -le 5
then
  echo "$nota esta entre 4 y 5"
else
  echo "$nota no esta entre 4 y 5"
fi
