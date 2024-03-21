<<c
1. user has to provide source directory
2. action --> archieve/delete
3. if he selects archieve --> where is the destination directory
4. time --> optional, if he gives take it, otherwise 14 days default
5. memory --> optional. if he dont give dont consider, if he gives consider it...

old-logs.sh -s <source-dir> -a <archieve/delete> -d <destination-dir> -t <no-days> -m <memory-in-mb>

algorithm
---------------
-s, -a, -d --> check all these inputs, if he dont give tell him the usage....

source directory exists or not
destination directory exists or not
-a --> archieve if he dont give destination dir throw error about destination-dir
1.write assignment script
2.create roboshop shell
3.create EC2 roboshop machines in aws
c
######################################################
OPTIONS=":-s:-a:-d:t"
while getopts ${OPTIONS} option;
do
#find /root/logs/naresh -type f
case ${option} in
   s)
   case $1 in
   echo "your directory is "
     ;;
   a) 
   case $2 in
   echo "archiving the data"
    ;;
    d)
     case $3 in
  echo "destination directory"
    ;;
  t)
    case $4 in 
   echo "provide no. of days files to be deleted"
    ;;
 esac
done