#!/bin/bash
ATTRIBUTES=$(cat /etc/passwd)
while IFS=":"  read -r line
do
echo -e "$line" 
done > $ATTRIBUTES