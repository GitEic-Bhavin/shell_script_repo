#!/bin/bash

echo "Enter first Number "
read num1
echo "Enter second number "
read num2

echo "Enter Operator "
read operator

if [ $operator == "+" ]
then
  ans=$((num1 + num2))
  echo $ans
  elif
    [ $operator == "-" ]
    then
        ans=$((num1 - num2))
        echo $ans
else    
    echo "Choose only + and - "
fi
