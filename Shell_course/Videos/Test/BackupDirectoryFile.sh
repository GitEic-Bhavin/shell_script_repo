# read -p "Enter file or directory to backup :" input

# tar -cvf $input.tar.gz $input

#!/bin/bash

# Prompt user for file or directory to back up
read -p "Enter file or directory to backup: " input

# Check if the input exists and is not empty
if [ -z "$input" ]; then
    echo "No input provided. Exiting."
    exit 1
fi

if [ ! -e "$input" ]; then
    echo "The file or directory '$input' does not exist. Exiting."
    exit 1
fi

# Perform the backup
tar -cvf "$input.tar.gz" "$input" >> /home/einfochips/Music/Shell_course/Videos/Test/backup.txt 2>&1
