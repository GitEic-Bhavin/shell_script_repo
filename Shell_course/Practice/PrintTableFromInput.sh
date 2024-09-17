#!/bin/bash 
read -p "Enter number to create table " table

default=10
i=1

# if [[$i -le $default]]
while [ $i -le $default ]
do
    ans=$((table*i))
    echo "$table * $i = $ans"
    ((i ++))
done