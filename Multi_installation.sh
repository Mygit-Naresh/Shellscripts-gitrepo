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
echo -e "$G YOUR PRE-VALIDATION FUNCTION IS PASSED SUCCESFULLY; INSTALLATION VIM NOW $N"
###################### COMMAND ############################
yum install vimm -y &>> $LOGFILE
################# POST-VALIDATION CHECK AFTER INSTALLATION #####################
POSTVALIDATION(){
if [ $? -eq 0 ]
then echo -e " $G Installtion is succesfull $N "
else echo  " $R installation is not success $N "
fi
}
##################################
POSTVALIDATION
echo -e " $G YOUR POST-VALIDATION FUNCTION IS PASSED SUCCESFULLY;Your installation VIM is success $N "