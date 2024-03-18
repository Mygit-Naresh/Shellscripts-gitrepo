ID=$(id -u)
if [ $ID -eq 0 ]
then yum install wget -y
else echo "installtion not success" 
fi

<<c
Description. The if/else statement executes a block of code if a specified condition is true. 
If the condition is false, another block of code can be executed.
c