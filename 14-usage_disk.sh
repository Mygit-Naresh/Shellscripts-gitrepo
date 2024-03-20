#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#DISK_USAGE=$(df -hT | grep -vE 'tmp|File|boot' | awk '{print $6}' | cut -d % -f1)
DISK_USAGE=$(df -hT | grep -vE 'tmp|File|boot')
DISK_THRESHOLD=1
while IFS= read -r number
do
DISK_USAGE_NUMBER=$(echo $number | awk '{print $6}' | cut -d % -f1)
DISK_NAME=$(echo $number | awk '{print $1}')
echo "This DISK $DISK_NAME usage currently is $DISK_USAGE_NUMBER"
if [ $DISK_USAGE_NUMBER -ge $DISK_THRESHOLD ]
then
message+="MESSAGE : $G This $DISK_NAME has HIGH DISK USAGE and breached THRESHHOLD VALUE i.e $DISK_THRESHOLD $N"
fi
done <<< $DISK_USAGE
echo -e "MESSAGE : $message"