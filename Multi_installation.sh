#!/bin/bash
######## LISTED IMP VAIRABLES ################
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE=/root/logfolder/$0-$TIMESTAMP.log
echo "script stareted executing at $TIMESTAMP" &>> $LOGFILE
######################## PRE-VALIDATION CHECK BEFORE INSTALLATION #################
ID=$(id -u)
PREVALIDATION(){
if [ $ID -ne 0 ]
then
echo -e "$R Your are not authorized user to install softwares in this PC $N"
exit 1
else
echo -e  "$G Your are a root user $N"
fi
}
#############################
PREVALIDATION
echo -e " $G YOUR PRE-VALIDATION FUNCTION IS PASSED SUCCESFULLY $N "
###################### COMMAND ############################
yum install vimmm -y
yum list installed vim
################# POST-VALIDATION CHECK AFTER INSTALLATION #####################
POSTVALIDATION(){
if [ $? -ne 0 ]
then echo -e " $R Installtion is not succesfull $N "
exit 1
else echo -e " $G installation is success $N "
fi
}
##################################
POSTVALIDATION
echo -e " $G YOUR POST-VALIDATION FUNCTION IS PASSED SUCCESFULLY;Your installation VIM is success $N "