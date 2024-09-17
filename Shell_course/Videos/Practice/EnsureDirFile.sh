# Exercise 6:
# Write a shell script that prompts the user for a name of a file or directory and 
# reports if it is a regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.

read -p "Enter file or directory name :" input

if [ -f $input ]
then
    echo "This $input is a file and exists"

    ls -ltr $input

    elif [ -d $input ]
    then
        echo "This $input is a directory and exists"
    # else 
    #     echo "This $input does not exists"
    # fi
else
    echo "Entered $input is not exists"
fi