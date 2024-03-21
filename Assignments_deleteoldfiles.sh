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
SOURCEDIR=""
ARCHIVE=""
DESTINATION=""
TIME=""
OPTIONS=":-s:-a:-d:t"
while getopts ${OPTIONS} option;
do
#find /root/logs/naresh -type f
case $option in
s) SOURCEDIR="$OPTARG";;
a) ARCHIVE="$OPTARG";;
d) DESTINATION="$OPTARG";;
t) TIME="$OPTARG";;
#\?) echo "invalid options;;exit 1;;
esac
done
echo -e "find $SOURCEDIR -type f -mtime ${TIME}"
