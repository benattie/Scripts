#!/bin/bash
#Usage: sh m4a2mp3.sh list_of_files.txt
#Lo relacionado con IFS es para manejar archivos con espacios
#El script todavia tiene problemas y no hace lo que debería
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
for f in $(cat $1)
do
    ffmpeg -acodec libmp3lame -ab 320k -i $file $file.mp3
done
IFS=$SAVEIFS
echo "done!"
