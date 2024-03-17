#this is to install mysql in this PC with authorised root user
#!/bin/bash
$ID=$(id -u)
COMPUTER=$(hostname)
if [ $ID -eq 0  ]
then
yum install mysql -y
else
echo "your not priviledged user to install softwares on this $COMPUTER"
exit 1
fi