#!/bin/bash

function is_loyal() {
read -p "who is loyal: " name
read -p "How much loyal %" percentage

if [ $name == "bhavin" ]
then
    echo "$name is loyal"
elif [ $percentage -ge 100 ]
then
    echo "$name is loyal $percentage %"
fi
}

is_loyal