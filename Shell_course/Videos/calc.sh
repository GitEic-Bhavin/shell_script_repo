function calc() {
while true
do
read -p "Enter first number :" num1
read -p "Enter second number :" num2
read -p "Enter operator :" operator

# if [ "$operator" == '+' ]
if [ "$operator" == '+' ]
then
    ans=$((num1+num2))
    # ans=$(echo "scale=2; $num1 + $num2" | bc)
    echo "Ans is $ans"

    elif 
      [ "$operator" == '-' ]
    then    
        ans=$((num1-num2))
        #ans=$(echo "scale=2; $num1 - $num2" | bc)
        echo "Ans is $ans"

    elif
      [ "$operator" == '/' ]
    then
        ans=$((num1/num2))
    # ans=$(echo "scale=2; $num1 / $num2" | bc)  # scale=2 means if ans in decimal like .52458u, so its float type
                                                # so, ans in 2 decimal point like .50
                                                # bc = will handle floating and handle every aritmethic operation like / + - * .
        echo "Ans is $ans"

    elif 
      [ "$operator" = "*" ] 
    then
        # ans=$((num1*num2))
        ans=$(echo "scale=2; $num1 * $num2" | bc)
        echo "Ans is $ans"

else 
    echo "Enter valid number"
fi
break;
done
}
calc 