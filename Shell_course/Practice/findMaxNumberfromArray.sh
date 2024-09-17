array=(1 2 3 4)
default=0

for i in $array
do
    if i -ge $default
    then
        sum=$((default ++))