# This will print if google is down or not be able to ping google.
# If google is up or be able to ping google it will contiruously print "google stpp up...." at sleep 5 iterations.


while ping -c1 google.com > /dev/null
do
  echo "google still up...."
  sleep 5
done

echo "google down, continuing."