#!/bin/bash
#First condition to check folder exist or not
SOURCE_DIR=/root/logs
if [ -d $SOURCE_DIR ]
then
echo -e "Folder exists"
exit 1
else 
echo -e "Folder does not exists"
fi

mkdir /root/logs/temp/temp2


