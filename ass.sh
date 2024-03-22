#!/bin/bash

SOURCEDIR=""
ARCHIVE=""
DESTINATION=""
TIME=""
NAME=""
OPTIONS=":s:a:d:t:n:"
while getopts ${OPTIONS} option;
do
case $option in
s) SOURCEDIR="$OPTARG";;
a) ARCHIVE="$OPTARG";;
d) DESTINATION="$OPTARG";;
t) TIME="$OPTARG";;
n) NAME="$OPTARG";;
#\?) echo "Invalid option"; exit 1;;
esac
done

# Check if TIME variable is empty or not a positive integer
if [ -z "$TIME" ] || ! [[ "$TIME" =~ ^[0-9]+$ ]]; then
    echo "Time argument (-t) is required and must be a positive integer."
    exit 1
fi

echo "find $SOURCEDIR -type f -mtime +${TIME} -name $NAME"
$FILE_DELETE=$(find $SOURCEDIR -type f -mtime +${TIME} -name $NAME)
rm -rf $FILE_DELETE
