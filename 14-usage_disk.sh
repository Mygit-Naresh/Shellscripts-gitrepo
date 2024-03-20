#!/bin/bash
DISK_USAGE=$(df -hT | grep -vE 'tmp|File|boot' | awk '{print $6}' | cut -d % -f1)
DISK_THRESHOLD=1

if [ $DISK_THRESHOLD -ge $DISK_USAGE ]
then
echo "disk threshold breached"
else
echo "not breached"
fi
