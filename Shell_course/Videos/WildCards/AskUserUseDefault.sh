# Exercise 2:

# Write a script that renames files based on the file extension. 
# The script should prompt the user for a file extension. 
# Next, it should ask the user what prefix to prepend to the file name(s). 
# By default the prefix should be the current date in YYYY­MM­DD format. 
# So, if the user simply presses enter the date will be used. 
# Otherwise, whatever the user entered will be used as the prefix. 
# Next, it should display the original file name and the new name of the file.
# Finally, it should rename the file.

read -p "Enter file extension :" input
read -p "Enter file formate or enter to use default YYYYMMDD ": format

if [ -n $format ]
then
    if [ -f $input ]
    then
    file=`ll *.$input`
        for file in $file
        do
            # ll *.$file
            format=$(date +%F)
            mv $file $formate-$file
        done
else
    echo "default formate will be used"
        mv $formate.jpg
fi