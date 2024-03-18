ID=$(id -u)
if [ $ID -ne 0 ]
then yum install vim -y # wget INSTALLS IF IT IS TRUE
else yum install wget -y  # vim INSTALLS IF IT IS FALSE
fi

<<c
Description. The if/else statement executes a block of code if a specified condition is true. 
If the condition is false, another block of code can be executed.
c