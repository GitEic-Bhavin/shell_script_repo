#!/bin/bash
read -p "Enter number for 2 power :" num

i=1

while [ $i -le $num ]
do
    ans=$((num**i))  # Will work as 5^1=5 5^2=25.
    echo $ans
    ((i ++))
    
done

# echo $((2**2))