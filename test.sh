ID=$(id -u)
if [ $ID -eq 0 ]
then yum install wget -y # wget INSTALLS IF IT IS TRUE
else yum install vim -y  # vim INSTALLS IF IT IS FALSE
fi
<<c
STATUSCHECK=yum list installed vim
if [ $STATUSCHECK -ne 0 ]
then yum install wget -y # wget INSTALLS IF IT IS TRUE
exit 1
else yum install vim -y  # vim INSTALLS IF IT IS FALSE
fi


Description. The if/else statement executes a block of code if a specified condition is true. 
If the condition is false, another block of code can be executed.
c