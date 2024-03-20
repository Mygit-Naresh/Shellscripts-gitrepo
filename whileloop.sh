#!/bin/bash
AD=/etc/passwd-
if [ -d $AD ]
then
echo "folder exists"
else
echo "folder does not exists"
exit 1
fi
while IFS=":"  read -r  username uid gid
do
echo "USERNAME:$username"
echo "UID:$uid"
echo "GID: $gid"
done < $AD