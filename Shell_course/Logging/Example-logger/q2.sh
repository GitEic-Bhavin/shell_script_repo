# Exercise 2:

# Modify the previous script so that it uses a logging function. 
# Additionally tag each syslog message with "randomly" and include the process ID. 
# Generate 3 random numbers.

# MESSAGE=$RANDOM
# echo "$MESSAGE"

# logger -t -p user.info "$MESSAGE"

#!/bin/bash

function my_logger() {
    local MESSAGE=$@
    echo "$MESSAGE"
    logger -i -t randomly -p user.info "$MESSAGE"
}

my_logger "Random number: $RANDOM"
my_logger "Random number: $RANDOM"
my_logger "Random number: $RANDOM"