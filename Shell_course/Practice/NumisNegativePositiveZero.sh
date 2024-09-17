#!/bin/bash
read -p "Enter number to ensre that is negative , positive, zero :" num

if [[ $num -lt 0  ]]
then
    echo "$num is Negative"
    elif [[ $num -gt 0 ]]
    then
        echo "$num is positive"
else
    echo "$num is Zero"
fi