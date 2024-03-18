#!/bin/bash
<<comment
This script RUNS software installations
Author : Naresh
Date : 18-03-204
comment
SUCCESSLOG=/root/logfolder/success.log
FAILLOG=/root/logfolder/fail.log
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
yum install wget -y
VALIDATE $? "wget is installed success"
<<c
yum install git -y
VALIDATE $? "git is installed success"
yum install wgettt -y
VALIDATE $? wgettt
yum install vim -y
VALIDATE $? vim
c
