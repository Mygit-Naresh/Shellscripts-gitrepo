PERSON=naresh
GREET="Good Morning"
COURSE="Devops"
DATE=$(date)

echo "Enter your name"
read $PERSON
echo "Please $GREET"
read $GREET
echo "which course your learning"
read $COURSE


echo "Hi $PERSON, $GREET, I am learning $COURSE"
echo "Today $DATE concept is shell script"

