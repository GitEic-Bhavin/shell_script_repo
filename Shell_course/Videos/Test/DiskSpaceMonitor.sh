function disk_space() {
    monitor=$(df -h | grep -i /home | sed 's/%//' | awk '{print $5}')

    if [ $monitor -ge 10 ]
    then    
        echo "Alert! Disk Space is Used above 10 % ThreshHold"
        echo "Disk Space Used is $monitor%"
    else
        echo "Disk Space is $monitor"
    fi
}
disk_space