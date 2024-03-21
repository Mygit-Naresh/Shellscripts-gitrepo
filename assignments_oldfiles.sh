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
\?) echo "Invalid option"; exit 1;;
esac
done
echo "find $SOURCEDIR -type f -mtime +${TIME} -name $NAME"
cd $SOURCE_DIR
rm -rf $Name
