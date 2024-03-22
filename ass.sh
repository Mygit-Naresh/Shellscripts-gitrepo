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
USAGE(){
echo "Please use -s as source directory
    -a,  as action(You can choose archive or delete the day)
    -d,  as desctination where your archived files will be moved 
    -t,  Mention the number of days you want to delete files
    -n, name your filles or user * delete all files"
    }
s) SOURCEDIR="$OPTARG";;
a) ARCHIVE="$OPTARG";;
d) DESTINATION="$OPTARG";;
t) TIME="$OPTARG";;
n) NAME="$OPTARG";;
\?) echo "Invalid option": -$OPTARG >&2;USAGE;exit;;
esac
done
USAGE

# Check if TIME variable is empty or not a positive integer
<<c
if [ -z "$TIME" ] || ! [[ "$TIME" =~ ^[0-9]+$ ]]; then
    echo "Time argument (-t) is required and must be a positive integer."
    exit 1
fi
c
echo "find $SOURCEDIR -type f -mtime +${TIME} -name $NAME"
FILE_DELETE=$(find $SOURCEDIR -type f -mtime +${TIME} -name $NAME)
rm -rf $FILE_DELETE
