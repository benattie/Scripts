if [ $# -eq 1 ]
then
  echo "Moviendo $1 a /home/benattie/Programs/CMWP-140518/data"
  mv $1 /home/benattie/Programs/CMWP-140518/data
else
  echo "Cantidad de argumentos incorrecta"
  echo "Uso correcto:"
  echo "mv_cmwp nombre_del_archivo"
fi
