#!/bin/bash
SOURCEDIR=""
ARCHIVE=""
DESTINATION=""
TIME=""
NAME=""
OPTIONS=":s:a:d:t:n:"

while getopts ${OPTIONS} option;
if [ -d $SOURCE_DIR ]
then echo "$SOURCE_DIR does not exist"
exit 1
fi
do
case $option in
s) SOURCEDIR="$OPTARG";;
a) ARCHIVE="$OPTARG";;
d) DESTINATION="$OPTARG";;
t) TIME="$OPTARG";;
n) NAME="$OPTARG";;
\?) echo "Invalid options"; exit 1;;
esac

done
FILES_DELETE=$(find $SOURCEDIR -type f -mtime +${TIME} -name $NAME)
cd $SOURCE_DIR
rm -rf $FILES_DELETE
