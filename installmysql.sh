#this is to install mysql in this PC with authorised root user
#!/bin/bash
ID=$(id -u)
COMPUTER=$(hostname)
if [ $ID -ne 0 ]
then
echo "your not priviledged user to install softwares on this computer $COMPUTER"
exit 1
else
echo "your a root user hence proceeding with installtion"
fi
yum install mysql -y
if [ $? -eq 0 ]
then
echo "install is success"
else 
echo "install is failure"
fi
yum install git -y
if [ $? -eq 0 ]
then
echo "install is success"
else 
echo "install is failure"
fi

