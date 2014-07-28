#!/bin/bash
# usage download.sh youtube_url
ARGC=$#
# echo $ARGC
if [ $ARGC -eq 1 ]; then
    youtube-dl --extract-audio $1
    #convert m4a to mp3
    
    FILES="*.m4a"
    for F in $FILES
    do
        newname=`basename "$F" .m4a`
        echo $newname
        avconv -i "$F" -acodec libmp3lame -ab 192k "$newname.mp3"
    done
    rm *.m4a
else
    echo "Numero incorrecto de argumentos"
    echo "Ejecute:"
    echo "youtube_download.sh youtube_url"
fi
