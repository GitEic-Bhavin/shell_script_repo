#!/bin/bash

# Ensure Mysql is running
Service="mysql"
date=$(date +%d%m%Y)
Db_Name="mydatabase"
Backup_Dir="Enter Backup Dir local"

if systemctl is-active --quiet $Service
then
    echo "$Service is Running"
    echo
    echo "Backup for mysql will be take"

    mysqldump -u root -p $Db_Name > $Backup_Dir/$Db_Name-$date.sql
    if [ $? -eq 0 ]
    then
        echo "Backup of Database is taken Successfully!"
    else
        echo "Backup failed"
    fi
else
    echo "First Run Service of mysql"
fi
