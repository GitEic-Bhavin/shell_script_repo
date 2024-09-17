read -p "Enter directory path to count all files availabel in that directory :" dir

if [ -d $dir ]
then
    ans=$(find $dir -maxdepth 1 -type f | wc -l)
    echo "Total $ans files available in $dir"
fi

# if [ -d $dir ]
# then
#     ans=$(find $dir -maxdepth 1 -type d | wc -l)
#     echo "Total $ans directory available in $dir"
# fi