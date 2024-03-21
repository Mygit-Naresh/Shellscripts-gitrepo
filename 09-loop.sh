#!/bin/bash
<<c
for i in {1..100} #Provide only 2 dots
do
echo  $i
done
c
MENU=("Idly Puri Chapathi Upma Kichidi Dosa Pongal")
DAY=("SUNDAY MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY")
for i in $MENU
while IFS= read -r sunday monday tuesday wednesday thursday friday saturday
do
echo "Today $1 breakfast is $i "
done
