#!/bin/bash

# if systemctl is-active --quiet nginx
# then
#     echo "nginx is running"
# else
#     echo "nginx is not running"
# fi
function service_status () {
    read -p "Enter Service name :" -a Service # -a = user enter multiple service name , will accept as array list.
# Service=("nginx" "apache2")

for service in "${Service[@]}"
do
    if systemctl is-active --quiet $service
    then
        echo "$service is running"
    else
        echo "$service is not running"
    fi
done
}
service_status