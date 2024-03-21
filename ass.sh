#!/bin/bash

SOURCEDIR=""
ARCHIVE=""
DESTINATION=""
TIME=""
OPTIONS=":s:a:d:t:"
while getopts ${OPTIONS} option;
do
case $option in
s) SOURCEDIR="$OPTARG";;
a) ARCHIVE="$OPTARG";;
d) DESTINATION="$OPTARG";;
t) TIME="$OPTARG";;
\?) echo "Invalid option"; exit 1;;
esac
done

# Check if TIME variable is empty or not a positive integer

echo "find $SOURCEDIR -type f -mtime +${TIME}"
