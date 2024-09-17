while true
do
read -p "Choose option : 1) print-logs 2) cpu-usage 3) storage-info" input 

case $input in

1) less /var/log/syslog ;;
2) top | head -n 5 | grep -i '%cpu(s)' ;;
3) df -h /home ;;
esac
break;
done