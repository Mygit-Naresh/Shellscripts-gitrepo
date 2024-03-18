#!/bin/bash
######## LISTED IMP VAIRABLES ################
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE=/root/logfolder/$0-$TIMESTAMP.log
######################## PRE-VALIDATION CHECK BEFORE INSTALLATION #################
PREVALIDATION() {
ID=$(id -u)
if [ $ID -eq 0 ]
then
echo -e "$G Your are a root user and proceed with installation $N"
else
echo "$R Your are not authorized user to install softwares in this PC $N"
fi
}
#############################
PREVALIDATION
echo -e "$G YOUR PRE-VALIDATION FUNCTION IS PASSED SUCCESFULLY; INSTALLATION VIM NOW $N"
yum install vim -y &>> $LOGFILE
################# POST-VALIDATION CHECK AFTER INSTALLATION #####################
POSTVALIDATION() {
if [ $? -eq 0 ]
then echo "$G Your installation succesfully installed $N"
else echo "$R Your installed is already installed or failed please check $N"
fi
}
##################################
POSTVALIDATION
echo "YOUR POST-VALIDATION FUNCTION IS PASSED SUCCESFULLY;Your installation VIM is success"