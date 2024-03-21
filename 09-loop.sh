#!/bin/bash
<<c
for i in {1..100} #Provide only 2 dots
do
echo  $i
done
c
MENU=("Idly Puri Chapathi Upma Kichidi Dosa Pongal")
DAY=("SUNDAY MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY")
for i in $DAY
while IFS= read -r $MENU
do
echo "Today is $i and breakfast is $MENU"
done
