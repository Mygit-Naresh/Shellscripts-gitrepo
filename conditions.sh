#PROBLEM STATEMENT
#Print some random number if it is greter than 50 print it as "great SUCCESS"
#if it is less than 50 print it as "LESS failure"
#!/bin/bash
R="\e[31m"
G="\e[32m"
N="\e[0m"
echo "enter your number"
read NUMBER
if [ $NUMBER -ge 50  ]
then
echo "Your printed number is $NUMBER and it is greater than 50 and final result is $G GREAT SUCCESS $N "
else
echo "Your printed number is $NUMBER and it is NOT greater than 50 and final result is $R LESS Failure $N "
fi
