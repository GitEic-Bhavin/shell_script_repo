# Set Disk Usage Threshhold to give alert on set Threshhold will cross.

#!/bin/bash

Threshhold=50

disk_usage=$(df -h | tail -n1 | awk '{print $5}' | sed 's/%//')

# here, sed it use to interact with stream editor 
# 's' -- Substitution Operations
# % -- find for charactor %
# // -- replace % with nothing. 
# If Disk Usage 10% , it will replace with 10. bcz, Threshhold value in 50 not 50%.

if [ "$disk_usage" -gt "$Threshhold" ]
then
  echo "Disk Usage is running low! Disk Usage: $disk_usage%"
else
  echo "Disk Usage is within acceptable limits. Disk Usage: $disk_usage%"
fi