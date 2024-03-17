#!/bin/bash
LAPTOPLIST=("Dell" "HP" "Thoshiba")

echo "list the laptop brands please $LAPTOPLIST"
echo "list the second brand ${LAPTOPLIST[1]}"
echo "list the all brands mentioned ${LAPTOPLIST[@]}"