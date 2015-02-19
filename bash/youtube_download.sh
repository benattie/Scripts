#!/bin/bash
# usage download.sh youtube_url
cd ~/Downloads/
ARGC=$#
# echo $ARGC
if [ $ARGC -ge 1 ]; then
    i=1
    while [ $i -le $ARGC ]; do
        youtube-dl --extract-audio ${!i}
        i=$((i+1))
    done
    #convert m4a to mp3
    
    FILES="*.m4a"
    for F in $FILES
    do
        newname=`basename "$F" .m4a`
        echo $newname
        avconv -i "$F" -acodec libmp3lame -ab 192k "$newname.mp3"
    done
    rm *.m4a
    echo "Done!"
else
    echo "Numero incorrecto de argumentos"
    echo "Ejecute:"
    echo "youtube_download.sh youtube_url"
fi

mv *.mp3 ~/Music/
