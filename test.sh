if [ -d "/App1" ]
then echo "already exists"
else mkdir "/App1"
fi


<<c
ID=$(id -u)
if [ $ID -eq 0 ]
then yum install wget -y # wget INSTALLS IF IT IS TRUE
else yum install vim -y  # vim INSTALLS IF IT IS FALSE
fi


STATUS=$(git --version)
    if [ $STATUS -eq 0 ]
then echo -e " \e[32m VIM IS already installed \e[32m "
exit 1
else echo -e  " \e[32m INSTALLATION IS IN PROGRESS  \e[0m "
fi
yum install wget -y

Description. The if/else statement executes a block of code if a specified condition is true. 
If the condition is false, another block of code can be executed.
c