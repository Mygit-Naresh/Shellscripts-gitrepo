#!/bin/bash
AD=/etc/passwd
while IFS=":"  read -r  username uid gid
do
echo "USERNAME:$username"
echo "UID:$uid"
echo "GID: $gid"
done < $AD