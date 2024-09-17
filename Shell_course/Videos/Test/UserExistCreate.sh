
while true
do
read -p "Enter user name to create user if not exists :" user

getent passwd $user >> /dev/null 2>&1

if [ $? -eq 0 ] 
then
    echo "User $user is already exists!"
    echo "plz, Enter valid user nane"
else 
    useradd $user
    echo "User $user is created!"
fi

done

