while true
do

read -p "Enter first number :" num1
read -p "Enter second number :" num2
# read -p "Enter operator + - / * :" operator

read -p "Enter Operatror : +), -), /), *)" choice
case $choice in
+)
# if [ "$operator" == "+" ]
# then
    ans=$(echo "scale=2; $num1+$num2" | bc)

    # ans=$((num1+num2))
    echo "Ans is $ans";;

-)
    # elif
    #     [ "$operator" == "-" ]
    #     then
            ans=$(echo "scale=2; $num1-$num2" | bc)

            # ans=$((num1-num2))
            echo "Ans is $ans";;
    
/)
    # elif
    #     [ "$operator" == "/" ]
    #     then
            ans=$(echo "scale=2; $num1/$num2" | bc)
            # ans=$((num1/num2))
            echo "Ans is $ans";;

*)
    # elif
    #     [ "$operator" == "*" ]
    #     then
            ans=$(echo "scale=2; $num1*$num2" | bc)
            # ans=$((num1*num2))
            echo "Ans is $ans";;
# else    
#     echo "Enter valid number"
# fi
esac
break;
done