#!/bin/bash
#First condition to check folder exist or not
SOURCE_DIR=/root/logs
if [ -d $SOURCE_DIR ]
then
echo -e "Folder exists"
else 
echo -e "Folder does not exists"
fi

cd /root/logs


