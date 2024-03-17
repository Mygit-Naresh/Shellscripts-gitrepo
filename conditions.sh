#PROBLEM STATEMENT
#Print some random number if it is greter than 50 print it as "great SUCCESS"
#if it is less than 50 print it as "LESS failure"
#!/bin/bash
echo "enter your number"
read NUMBER
if [ $NUMBER -ge 50  ]
then
echo "Your printed number printed as $NUMBER and it is greater than 50 and final result is '\e[32m GREAT SUCCESS \e[0m]'"
else
echo "Your printed number printed as $NUMBER and it is NOT greater than 50 and final result is '\e[31m LESS FAILURE \e[0m]'"
fi
