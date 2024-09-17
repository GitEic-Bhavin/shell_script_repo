# Exercise 2:

# Write a shell script that asks the user for the number of lines they would like to display from the /etc/passwd file and display those lines.

# Example output:

# How many lines of /etc/passwd would you like to see? 3
# root:x:0:0:root:/root:/bin/bash
# daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
# bin:x:2:2:bin:/bin:/usr/sbin/nologin

read -p "How manh lines you want to read ?" Show_Lines

line_num=1

while read line
do  
  if [ "$line_num" -gt "$Show_Lines" ]
  then
    break
  fi
  echo $line_num: $line
  ((line_num++))
done < /etc/passwd
    
