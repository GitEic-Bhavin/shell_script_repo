function cpu_usage () {
    echo "Cpu Usage will be show"
    top=$(top | head -n 5 | grep -i "cpu(s):")
    topp=$($top | sed 's/%//')

    echo "Cpu Usage is $top"

    # if [ $topp -ge 10 ]
    # then
    # echo "Alert! Cpu Usage is above 10%"
    # else
    echo "Cpu Usage is $topp%"
    # fi
}
cpu_usage

# function memory_usage () {
#     echo "Memory Usage will be show"
#     memory=$(top | head -n 10 | grep -i mem)

#     echo "Memory Usage is $memory"
# }
# memory_usage