# Exercise 7:
# Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.

read -p "Enter file or directory name" item

function pass_arg() {
    for item in $@
    do
        if [ -f $item ]
        then
            echo "This $item is file and exists"
            ls -ltr $item
            elif [ -d $item ]
            then
                echo "This $item is directory and exists"
                ls -ltr $item
        else
            echo "Entered $item is not exists and not any type of file or directory"
            exit 1
        fi
    done
}

# pass_arg /home/einfochips/ /home/einfochips/main.tf
pass_arg $item