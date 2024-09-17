read -p "Enter path to find file is exist: " file

if [ -f $file ]
then 
    echo " $file is exists"
    if [ -r $file ]
    then
        echo "$file is readable"
        echo "See content of $file
        cat -n $file
    else
        echo "$file is not readable"
    fi
else 
    echo "$file does not exists"
fi
