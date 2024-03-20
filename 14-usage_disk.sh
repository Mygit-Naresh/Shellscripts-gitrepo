#!/bin/bash
#DISK_USAGE=$(df -hT | grep -vE 'tmp|File|boot' | awk '{print $6}' | cut -d % -f1)
DISK_USAGE=$(df -hT | grep -vE 'tmp|File|boot')
DISK_THRESHOLD=1
while IFS= read -r number
DISK_USAGE_NUMBER=$(echo $number | awk '{print $6}' | cut -d % -f1)
echo $DISK_USAGE_NUMBER
do
echo "success"
exit 1
done <<< $DISK_USAGE