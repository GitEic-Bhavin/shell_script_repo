read -p "Enter file name" file
echo "If $file does not exists we will create"
read -p "Enter how many files want to create" count

one=0

if [ -f /tmp/$file ]
then
    echo "$file is exists"

else
    echo "We are creating file $file-{1..$count}.txt in /tmp."
    if [ $one -le $count ]
    then
        touch $file-$one.txt
        ((one ++))
    fi
    # touch $file{1..$count}.txt
fi
