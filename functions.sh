#!/bin/bash
LOGFILE1=/root/logfolder/success.log
LOGFILE2=/root/logfolder/fail.log

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
if [ $? -eq 0 ]
then
echo -e "\e[32m install is success \e[0m"
else 
echo -e "\e[31m install is failure \e[0m"
fi
}
yum install mysql -y
VALIDATE > $LOGFILE1 2> $LOGFILE2

yum install git -y
VALIDATE > $LOGFILE1 2> $LOGFILE2

yum install wget -y
VALIDATE $LOGFILE1 2> $LOGFILE2

yum install vim -y
VALIDATE $LOGFILE1 2> $LOGFILE2

