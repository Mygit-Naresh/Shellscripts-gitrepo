#!/bin/bash
#First condition to check folder exist or not
SOURCE_DIR=/root/logs
if [ -d $SOURCE_DIR ]
then
echo -e "Folder exists"
else
echo -e "Folder does not exists"
exit 1
fi

OLD_FILES=$(find $SOURCE_DIR -type f  -mtime +14 -name "*.log")
while IFS= read -r line
do
echo "deleting $line file "
rm -rf -v $line
done < $OLD_FILES





