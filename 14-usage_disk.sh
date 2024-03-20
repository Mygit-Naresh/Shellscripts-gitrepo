#!/bin/bash
#DISK_USAGE=$(df -hT | grep -vE 'tmp|File|boot' | awk '{print $6}' | cut -d % -f1)
DISK_USAGE=$(df -hT | grep -vE 'tmp|File|boot')
DISK_THRESHOLD=1
while IFS= read -r number
do
DISK_USAGE_NUMBER=$(echo $number | awk '{print $6}' | cut -d % -f1)
echo $DISK_USAGE_NUMBER
done <<< $DISK_USAGE
if [ $DISK_USAGE_NUMBER -ge $DISK_THRESHOLD ]
then
 message+>echo "DISK breached above $DISK_THRESHOLD and current value is $DISK_USAGE_NUMBER"
fi