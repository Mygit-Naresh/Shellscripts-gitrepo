#!/bin/bash
<<c
for i in {1..100} #Provide only 2 dots
do
echo  $i
done
c
MENU=("Idly Puri Chapathi Upma Kichidi Dosa Pongal")
for i in $MENU
DAY=("SUNDAY MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY")
do
echo "$DAY breakfast is $i "
done


#${DAY[@]}"