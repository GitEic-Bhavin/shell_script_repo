read -p “Enter y or n: “ANSWER

case “$ANSWER in 
  [yY] | [yY] [eE] [sS] )
    echo “You answered yes.”
     ;;
  
  [nN] | [nN] [oO] )
     echo “You answered no.”
      ;;

*)    -- this means anything without yes or no
    echo “Invalid answer.”
    ;;
esac
