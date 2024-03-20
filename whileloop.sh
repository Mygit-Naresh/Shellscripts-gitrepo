#!/bin/bash
AD="/etc/passwd"
while IFS=":"  read -r  username uid gid
do
echo -e "USERNAME:$username"
echo -e "UID:$uid"
echo -e "GID: $gid"
done < $AD