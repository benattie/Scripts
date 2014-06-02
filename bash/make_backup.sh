#!/bin/bash

echo "¿ Actualizaste /home/benattie/Templates/bash/rsync_exclude_list.txt ?"
rsync -avz --progress --exclude-from '/home/benattie/Templates/bash/rsync_exclude_list.txt' /home/benattie/ /media/usb0/home_bkp/
