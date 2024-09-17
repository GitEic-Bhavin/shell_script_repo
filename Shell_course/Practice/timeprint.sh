#1/bin/bash -ex
read -p "Enter time to see the Part of Day" time
# 0r
# echo "Enter time to see the Part of Day"
# read time

hr=`echo $time | cut -d ':' -f 1`
minutes=`echo $time | cut -d ':' -f 2`

if [ "$hr" -lt 5 ]
then 
  echo "Good deep night"
  elif 
    [ "$hr" -gt 5 ] && [ "$hr" -lt 7 ] && [ "$minutes" -lt 59 ]
    then 
      echo "Good early Morning"
    elif
        [ "$hr" -gt 09 ] && [ "$hr" -lt 12 ] && [ "$minutes" -lt 59 ]
        then
            echo "Good Morning"
        elif
            [ "$hr" -gt 12 ] && [ "$hr" -lt 16 ] && [ "$minutes" -lt 59 ]
            then
                echo "Good Afternoon"
            elif
                [ "$hr" -gt 16 ] && [ "$hr" -lt 19] && [ "$minutes" -lt 59 ]
                then
                     echo "Good Evening"
                elif [ "$hr" -gt 19 ] && [ "$hr" -lt 23 ] && [ "$minutes" -lt 59 ]
                then
                    echo "Good Night"
else
  echo "Enter Time is not corrected format"
  echo "Plz, Enter time in formate of 00:00 to 23:59 only"
fi