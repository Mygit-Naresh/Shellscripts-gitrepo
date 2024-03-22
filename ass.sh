#!/bin/bash
SOURCEDIR=""
ACTIOn=""
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
a) ACTION="$OPTARG";;
d) DESTINATION="$OPTARG";;
t) TIME="$OPTARG";;
n) NAME="$OPTARG";;
#\?) echo "Invalid options";;
:) USAGE; exit;;
esac

if [ "$ACTION" = "archive" ] || [ "$ACTION" = "delete" ]; 
    then
    echo -e "This will take action as $ARCHIVE the $SOURCEDIR and move to $DESTINATION"
    else
    echo -e "This will take action as $ACTION and delete $SOURCEDIR"
    fi
done

echo "find $SOURCEDIR -type f -mtime +${TIME} -name $NAME"
FILE_DELETE=$(find $SOURCEDIR -type f -mtime +${TIME} -name $NAME)
rm -rf $FILE_DELETE
