#!/bin/bash
ATTRIBUTES=$(cat /etc/passwd)
while IFS=":"  read -r  username uid gid
do
echo -e "$username"
echo -e "$uid"
echo -e "$gid"

done >> $ATTRIBUTES