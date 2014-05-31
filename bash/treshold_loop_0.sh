for i in {0..50..10}
do
  echo "Haciendo corrida con valor de umbral $i"
  mkdir out
  ./spr2txt.exe $i
  mv out out_$i
done
