#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE=/tmp/$0-$TIMESTAMP-$PACKAGE.log
echo "$G SCRIPT STARTED AT $TIMESTAMP" &>> $LOGFILE
ID=$(id -u)
if [ $ID -ne 0 ]
then echo -e "$R Your not a root user $N"
exit 1
else echo -e "$G proceed with installation $N"
fi
VALIDATE(){
if [ $1 -ne 0 ] 
then echo -e "$R $2  not successfull $N"
else echo -e "$G $2 success $N"
fi
}
#yum install git mysql postfix wget tree vim -y
for package in $@
do
yum list installed $package $>> $LOGFILE
if [ $? -ne 0]
then
yum install $PACKAGE -y $>> $LOGFILE
VALIDATE $? "Installing  $package is "
else echo -e "Your $package already  installed $Y SKIPPING $N"
fi
done