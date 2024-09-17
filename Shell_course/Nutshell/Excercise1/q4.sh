# Exercise 4:
# Write a shell script to check to see if the file "/etc/shadow" exists. 
# If it does exist, display "Shadow passwords are enabled." 
# Next, check to see if you can write to the file. 
# If you can, display "You have permissions to edit /etc/shadow." 
# If you cannot, display "You do NOT have permissions to edit /etc/shadow

if [ -e /etc/shadow ]
then 
    echo "shadow passwords are enabled."
    if [ -w /etc/shadow ]
        then 
        echo "You have permission to edit /etc/shadow"
    else
        echo "You do NOT have permission to edit /etc/shadow"
    fi
    
else
    echo "shadow password are NOT enabled"
fi