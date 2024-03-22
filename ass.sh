#!/bin/bash
SOURCEDIR=""
ARCHIVE=""
DESTINATION=""
TIME=""
NAME=""
OPTIONS=":s:a:d:t:n:"
while getopts ${OPTIONS} option;
USAGE(){
echo -e "Please specify
 -s as source directory 
-a,  as action(You can choose archive or delete the day)
-d,  as desctination where your archived files will be moved 
-t,  Mention the number of days you want to delete files
-n,  name your filles or user * delete all files"
}
do
case $option in
s) SOURCEDIR="$OPTARG";;
a) ARCHIVE="$OPTARG";;
d) DESTINATION="$OPTARG";;
t) TIME="$OPTARG";;
n) NAME="$OPTARG";;
#\?) echo "Invalid options";;
:) USAGE; exit;;
esac
done
if [ "$ARCHIVE" = "archive" ] || ! [ "$ARCHIVE" = "delete" ]; then
    echo "This will take action as "will $ARCHIVE the $SOURCEDIR and move to $DESTINATION""
  else
    echo "This will take action as "will $ARCHIVE the $SOURCEDIR""
fi
echo "find $SOURCEDIR -type f -mtime +${TIME} -name $NAME"
FILE_DELETE=$(find $SOURCEDIR -type f -mtime +${TIME} -name $NAME)
rm -rf $FILE_DELETE
