# Exercise 6:
# Write a shell script that prompts the user for a name of a file or directory and 
# reports if it is a regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.

read -p "Enter file or directory name" input

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