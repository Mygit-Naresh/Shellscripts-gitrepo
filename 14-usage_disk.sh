#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#DISK_USAGE=$(df -hT | grep -vE 'tmp|File|boot' | awk '{print $6}' | cut -d % -f1)
PC=$(hostname)
DISK_USAGE=$(df -hT | grep -vE 'tmp|File|boot')
DISK_THRESHOLD=1
while IFS= read -r number
do
DISK_USAGE_NUMBER=$(echo $number | awk '{print $6}' | cut -d % -f1)
DISK_NAME=$(echo $number | awk '{print $1}')
echo "This DISK $DISK_NAME usage currently is $DISK_USAGE_NUMBER"
if [ $DISK_USAGE_NUMBER -ge $DISK_THRESHOLD ]
then
NOTIFY+="MESSAGE : $G This $DISK_NAME with $PC namehas HIGH DISK USAGE i.e $DISK_USAGE_NUMBER and breached THRESHHOLD VALUE
$DISK_THRESHOLD $N\n"
fi
done <<< $DISK_USAGE

echo -e $NOTIFY
#mail -s "HIGH DISK UTILIZATION" nareshkumarsouduri2@gmail.com
#sh mail.sh

#echo "Email Alert sent"