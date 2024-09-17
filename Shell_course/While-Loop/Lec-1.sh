index=1
while [ $index -lt 6 ]
do
  echo “Creating project-${index}”
  mkdir ${index}
  ((index++))
done