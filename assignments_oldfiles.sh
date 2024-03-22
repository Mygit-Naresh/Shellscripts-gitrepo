#!/bin/bash
SOURCEDIR=""
ACTION=""
DESTINATION=""
TIME=""
NAME=""
OPTIONS=":s:a:d:t:n:"
while getopts ${OPTIONS} option;
if [ ! -d $SOURCEDIR ]
then echo "$SOURCEDIR folder does not exist"
exit 1
fi
<<c
if [ "$ACTION" -eq archive ] 
then 
zip -r $DESTINATION.zip  $SOURCEDIR
fi
if [ "$ACTION" -eq delete ]
FILES_DELETE=$(find $SOURCEDIR -type f -mtime +${TIME} -name $NAME)
cd $DESTINATION
rm -rf $FILES_DELETE
c
do
case $option in
s) SOURCEDIR="$OPTARG";;
a) ACTION="$OPTARG";;
d) DESTINATION="$OPTARG";;
t) TIME="$OPTARG";;
n) NAME="$OPTARG";;
\?) echo "Invalid options"; exit 1;;
esac
FILES_DELETE=$(find $SOURCEDIR -type f -mtime +${TIME} -name $NAME)
cd $SOURCE_DIR
rm -rf $FILES_DELETE
done
#sh assignments_oldfiles.sh -s    -a     -d         -t    -n

