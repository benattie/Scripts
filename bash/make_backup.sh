#!/bin/bash

echo "Vaciando papelera"
rm -Rf /home/benattie/.local/share/Trash/files/*
rm -Rf /home/benattie/.local/share/Trash/info/*
echo "¿ Actualizaste /home/benattie/Templates/bash/rsync_exclude_list.txt ?"
rsync -avz --progress --exclude-from '/home/benattie/Templates/bash/rsync_exclude_list.txt' /home/benattie/ /media/benattiHD_bkp/home_bkp/
