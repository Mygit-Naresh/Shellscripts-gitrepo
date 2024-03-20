#!/bin/bash
ATTRIBUTES=$(cat /etc/passwd)
while IFS=":"  read -r  username uid gid
do
echo -e "USERNAME:$username"
echo -e "UID:$uid"
echo -e "GID: $gid"
done >> $ATTRIBUTES