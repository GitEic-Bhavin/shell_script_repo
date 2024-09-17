# #!/bin/bash

# echo "Enter first number "
# read num1
# echo "Enter second number "
# read num2
# echo "Enter Operator "
# read operator

# while [ $operator == "+" ]
# do
#     ans=$((num1+num2))
#     echo "Ans is : $ans"
# break;
# done


while true
do

echo "Enter 2 numbers :" 
read num1 
read num2

echo "Enter Operator (+, -, /, *,) "
read operator
    case $operator in 
        +) echo "Ans is: $((num1+num2))";;
        -) echo "Ans is: $((num1-num2))";;
        /) echo "Ans is: $((num1/num2))";;
        *) echo "Ans is: $((num1*num2))";;

    esac
    break;
done
