Line_Num=1
while read Line
do
  echo "${Line_Num}: ${Line}"
#   sleep 1
  ((Line_Num++))
done < /etc/fstab
sleep 1
# You can find a word using grep

Fs_Num=1
grep UUID /etc/fstab | while read FS MP REST  # FS= First filed file system, MP= Second field Mount Point, REST= remain line
do
  echo "${Fs_Num} file system: ${FS}"
  echo "${Fs_Num} mount point: ${MP}"
  ((Fs_Num++))
done