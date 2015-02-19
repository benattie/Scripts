#!/bin/bash
#Usage: sh pdf2png.sh list_of_files.txt
ARGC=$#
if [ $ARGC -ne 1 ]; then
   echo "Uso correcto:"
   echo "pdf2png.sh list_of_files.txt"
   exit
fi

for file in $(cat $1)
do
  echo "Convirtiendo $file a png"
  convert -density 300 $file "`basename $file .pdf`.png"
done
echo "done!"
