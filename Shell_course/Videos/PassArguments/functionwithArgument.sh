#!/bin/bash

function is_loyal() {
    read -p "$1 Enter name: " name
    read -p "$2 Enter %: " percentage

    if [ $1 == "bhavin" ]
    then
        echo "name is $1"
    elif [ $2 -ge 100 ]
    then
        echo "$1 is loyal"
    else
        echo "$1 is not loyal"
    fi
}
is_loyal Bhavin 110