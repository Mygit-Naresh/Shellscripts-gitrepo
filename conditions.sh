#PROBLEM STATEMENT
#Print some random number if it is greter than 50 print it as "great SUCCESS"
#if it is less than 50 print it as "LESS failure"
#!/bin/bash
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
N="\e[0m"
echo "enter your number"
read NUMBER
if [ $NUMBER -ge 50  ]
then
echo "Your printed number printed as $NUMBER and it is greater than 50 and final result is $GREEN GREAT SUCCESS $N "
else
echo "Your printed number printed as $NUMBER and it is NOT greater than 50 and final result is $RED LESS Failure $N "
fi
