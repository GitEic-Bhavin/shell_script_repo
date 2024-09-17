# Exercise 7:
# Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.

# read -p "Enter file or directory name" input

input="q1.sh /home/einfochips"

if [ -r $input ]
    then 
    echo "$input is a file"
    ls -l $input
    if [ -d $input ]
        then
        echo "$input is a file"
        ls -l $input
    fi
else
    echo "$input is not a file or directory"

fi