function create_user () {
while true
do
read -p "Enter user name to create user " user

getent passwd $user >> /dev/null 2>&1
    if [ $? == 0 ]
    then    
        echo "$user is already exists."
        echo "Plz, enter valid user name"
    else
        sudo useradd $user
        echo "$user is created successfully!"
    fi
break;
done
}

create_user