# Exercise 2:

# Write a shell script that accepts a file or directory name as an argument. 
# Have the script report
# if it is a regular file, a directory, or other type of file. 
# If it is a regular file, exit with a 0 exit status.
# If it is a directory, exit with a 1 exit status. 
# If it is some other type of file, exit with a 2 exit status.

input="q1.sh /home/einfochips"

if [ -r $input ]
    then 
    echo "$input is a file"
    ls -l $input
    exit 0

    if [ -d $input ]
        then
        echo "$input is a file"
        ls -l $input
        exit 1

    fi
else
    echo "$input is not a file or directory"
    exit 2
fi