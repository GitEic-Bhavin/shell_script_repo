#!/bin/bash

backupdir="/home/einfochips/Music/Shell_course/Videos/"

tar -cvf "$backupdir/backup.tar.gz" $backupdir

echo "Backup Done!"
