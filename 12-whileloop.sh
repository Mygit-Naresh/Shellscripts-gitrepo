#!/bin/bash
AD=/etc/passwd-dup
if [ -f $AD ]
then
echo "file $AD exists"
else
echo "file $AD does not exists"
exit 1
fi
while IFS=":"  read -r  username uid gid
do
echo "USERNAME:$username"
echo "UID:$uid"
echo "GID: $gid"
done < $AD