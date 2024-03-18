#!/bin/bash
<<comment
This script RUNS software installations
Author : Naresh
Date : 18-03-204
comment
TIMESTAMP=$(date "+DATE: %D%nTIME: %T")
LOGS=/root/logfolder/$0-$TIMESTAMP.log
ID=$(id -u)
COMPUTER=$(hostname)
if [ $ID -ne 0 ]
then
echo "your not priviledged user to install softwares on this computer $COMPUTER"
exit 1
else
echo "your a root user hence proceeding with installtion"
fi
#This fucntion runs post installation of software
VALIDATE(){
if [ $1 -eq 0 ]
then
echo -e "\e[32m $2 is installed  success \e[0m"
else 
echo -e "\e[31m $2 install is failure \e[0m"
fi
}
yum install mysql -y &>> $LOGS
VALIDATE $? sql
yum install git -y &>> $LOGS
VALIDATE $? "yourMENTIONE_git"
yum install wgettt -y &>> $LOGS
VALIDATE $? wgettt
yum install vim -y  &>> $LOGS
VALIDATE $? "yourMENTIONE_vim"

